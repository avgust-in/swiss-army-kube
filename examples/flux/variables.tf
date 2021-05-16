variable "cluster_name" {
  default     = "AVG-swiss-army-kube"
  type        = string
  description = "A name of the Amazon EKS cluster"
}

variable "region" {
  default     = "us-east-2"
  type        = string
  description = "Set default region"
}

variable "availability_zones" {
  default     = ["us-east-2a", "us-east-2b"]
  type        = list(any)
  description = "Availability zones for project"
}

variable "environment" {
  default     = "avgust_jr"
  type        = string
  description = "A value that will be used in annotations and tags to identify resources with the `Environment` key"
}

variable "project" {
  default     = "AVG-SWISS"
  type        = string
  description = "A value that will be used in annotations and tags to identify resources with the `Project` key"
}

variable "domain_name" {
  default     = "swiss.sak.ninja"
  type        = string
  description = "Default domain name"
}

variable "fluxcd" {
  default = {
    repository = "flux-get-started"
    branch     = "master"
    owner      = "avgust-in"
  }
  type        = map(string)
  description = "A set of values for enabling deployment through ArgoCD"
}


