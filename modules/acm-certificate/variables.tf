
variable create_certificate  {
  type        = bool
  description = "Number of certificates"
  default     = false
}

variable domain_name {
  type        = string
  description = "A domain name for which the certificate should be issued"
  default     = ""
}

variable zone_id {
  type = string
}

variable validate_certificate {
  type    = bool
  default = true
}

variable tags {
  type        = map(string)
  description = "A set of tags"
  default     = {}
}


