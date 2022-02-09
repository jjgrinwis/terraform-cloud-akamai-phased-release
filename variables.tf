variable "hostnames" {
  description = "One or more hostnames that's using this cloudlet"
  type        = list(string)
  validation {
    condition     = length(var.hostnames) > 0
    error_message = "At least one hostname should be provided, it can't be empty."
  }
}

variable "policy_name" {
  description = "The Phased Release cloudlet policy name"
  type        = string
}

variable "group_name" {
  description = "Akamai group to create this resource in"
  type        = string
}

variable "to_deta_match_value" {
  description = "match value of all items that need to go to deta"
  type        = string
}

variable "activate_on_prod" {
  description = "Activate the policy on production?"
  type        = bool
  default     = false
}

variable "prod_version" {
  description = "The version to use on production"
  type        = numberdefault
  default     = null
}

variable "staging_version" {
  description = "The version to use on staging, latest by default"
  type        = numberdefault
  default     = null
}
