variable helm_chart_version {
  type        = string
  description = "An ArgoCD Helm Chart version"
  default     = "2.7.0"
}

variable conf {
  type        = map(string)
  description = "A custom configuration for ArgoCD deployment"
  default     = {}
}

variable module_depends_on {
  type        = list
  default     = []
  description = "A dependency list"
}

variable sync_branch {
  type        = string
  description = "A GitHub reference"
}

variable sync_repository {
  type        = string
  description = "A GitHub repository wich would be used for IaC needs"
}

variable sync_owner {
  type        = string
  description = "An owner of GitHub repository"
}

variable sync_vcs {
  type        = string
  description = ""
  default     = "github.com"
}

variable sync_protocol {
  type        = string
  description = ""
  default     = "https"
}

variable sync_path_prefix {
  type        = string
  description = "A path inside a repository"
  default     = ""
}

variable sync_apps_dir {
  type        = string
  description = "A folder for ArgoCD apps"
  default     = "apps"
}

variable sync_repo_url {
  type        = string
  description = "The URL of the repo to sync from. If this is omitted, the URL will automatically be constructed"
  default     = ""
}

variable sync_repo_ssh_private_key {
  type        = string
  description = "An SSH key for a private Repo from which to sync"
  default     = ""
}

variable cluster_name {
  type        = string
  description = "A name of the EKS cluster"
}

variable domains {
  type        = list(string)
  description = "A list of domains to use"
}






variable ingress_annotations {
  type        = map(string)
  description = "A set of annotations for ArgoCD Ingress"
  default     = {}
}

variable oidc {
  type        = map(string)
  description = "describe your variable"
  default = {
    id     = ""
    secret = ""
    issuer = ""
    name   = ""
  }
}

variable tags {
  type = map(string)
  default = {}
}



variable github_secret {
  type        = string
  description = "A secret for GitHub Webhooks"
  default     = ""
}


variable gitlab_secret {
  type        = string
  description = "A secret for GitLab Webhooks"
  default     = ""
}


variable bitbucket_server_secret {
  type        = string
  description = "A secret for BitBucket Server Webhooks"
  default     = ""
}


variable bitbucket_uuid {
  type        = string
  description = "A secret for Bitbucket Webhooks"
  default     = ""
}


variable gogs_secret {
  type        = string
  description = "A secret for Gogs Webhooks"
  default     = ""
}

