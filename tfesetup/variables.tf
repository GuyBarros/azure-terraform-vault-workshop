##################
#TFE
###################
variable "TFE_HOSTNAME" {
  description = "The TFE hostname to create the variables"
  default     = "app.terraform.io"
}
variable "TFE_TOKEN" {
  description = "The User token to create workspaces "
  
}

variable "TFE_WORKSPACE" {
  description = "The TFE workspace  to create the variables"
  default     = "app.terraform.io"
}

variable "TFE_ORGANIZATION" {
  description = "The TFE Organization to create workspaces "
  
}