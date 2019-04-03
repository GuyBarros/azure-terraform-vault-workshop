
provider "tfe" {
  hostname = "${var.TFE_HOSTNAME}"
  token    = "${var.TFE_TOKEN}"
}

data "tfe_workspace" "demostack" {
  name         = "${var.TFE_WORKSPACE}"
  organization = "${var.TFE_ORGANIZATION}"
}


###########
# terraform project
##############

resource "tfe_variable" "prefix" {
  key          = "prefix"
  value        =  ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.TFE_ORGANIZATION}/${var.TFE_WORKSPACE}"
}


###########
# Providers
##############
  resource "tfe_variable" "CONFIRM_DESTROY" {
  key          = "CONFIRM_DESTROY"
  value        =  1
  category     = "env"
  sensitive    = false
  workspace_id = "${var.TFE_ORGANIZATION}/${var.TFE_WORKSPACE}"
}


    # Azure
    resource "tfe_variable" "ARM_SUBSCRIPTION_ID" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id = "${var.TFE_ORGANIZATION}/${var.TFE_WORKSPACE}"
}

    resource "tfe_variable" "ARM_TENANT_ID" {
  key          = "ARM_TENANT_ID"
  value        =  ""
  category     = "env"
  sensitive    = false
  workspace_id = "${var.TFE_ORGANIZATION}/${var.TFE_WORKSPACE}"
}

    resource "tfe_variable" "ARM_CLIENT_ID" {
  key          = "ARM_CLIENT_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id = "${var.TFE_ORGANIZATION}/${var.TFE_WORKSPACE}"
}

    resource "tfe_variable" "ARM_CLIENT_SECRET" {
  key          = "ARM_CLIENT_SECRET"
  value        = ""
  category     = "env"
  sensitive    = true
  workspace_id = "${var.TFE_ORGANIZATION}/${var.TFE_WORKSPACE}"
}

