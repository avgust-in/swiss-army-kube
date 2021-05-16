#---------------------------------------------------------------------
# AVG Terraform
#
# Build 4 flux
#---------------------------------------------------------------------

#===================
# create namespace
#===================

resource "kubernetes_namespace" "flux_namespace" {
  metadata {
    name = var.namespace
  }
}

#===================
# module CRD
#===================

data "http" "crd" {
  url = "https://raw.githubusercontent.com/fluxcd/helm-operator/master/deploy/crds.yaml"
}
resource "kubectl_manifest" "crd" {
  yaml_body = data.http.crd.body
}

#===================
# module fluccd
#===================

resource "helm_release" "flux" {
  depends_on = [kubernetes_namespace.flux_namespace, kubectl_manifest.crd]
  name       = "flux"
  repository = "https://charts.fluxcd.io"
  chart      = "flux"
  namespace  = var.namespace

  set {
    name  = "git.url"
    value = var.git_url
    type  = "string"
  }
  set {
    name  = "git.branch"
    value = var.git_branch
    type  = "string"
  }
}

#===================
# module helm-operator
#===================

resource "helm_release" "helm" {

  name       = "helm"
  repository = "https://charts.fluxcd.io"
  chart      = "helm-operator"
  namespace  = var.namespace

  set {
    name  = "git.ssh.secretName"
    value = "flux-git-deploy"
    type  = "string"
  }
  set {
    name  = "helm.versions"
    value = "v3"
    type  = "string"
  }
}
