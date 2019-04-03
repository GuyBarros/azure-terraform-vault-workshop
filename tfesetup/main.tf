
provider "tfe" {
  hostname = "${var.TFE_HOSTNAME}"
  token    =  "${var.TFE_TOKEN}"
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
  value        =  "${var.prefix}"
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
  value        = "8708baf2-0a54-4bb4-905b-78d21ac150da"
  category     = "env"
  sensitive    = false
  workspace_id = "${var.TFE_ORGANIZATION}/${var.TFE_WORKSPACE}"
}

    resource "tfe_variable" "ARM_TENANT_ID" {
  key          = "ARM_TENANT_ID"
  value        =  "0e3e2e88-8caf-41ca-b4da-e3b33b6c52ec"
  category     = "env"
  sensitive    = false
  workspace_id = "${var.TFE_ORGANIZATION}/${var.TFE_WORKSPACE}"
}

    resource "tfe_variable" "ARM_CLIENT_ID" {
  key          = "ARM_CLIENT_ID"
  value        = "3b0bf866-d5c3-4134-976b-615dd6b8d4a5"
  category     = "env"
  sensitive    = false
  workspace_id = "${var.TFE_ORGANIZATION}/${var.TFE_WORKSPACE}"
}

    resource "tfe_variable" "ARM_CLIENT_SECRET" {
  key          = "ARM_CLIENT_SECRET"
  value        = "61682315-a5a6-4b6e-a31f-98bde6d07e9c"
  category     = "env"
  sensitive    = true
  workspace_id = "${var.TFE_ORGANIZATION}/${var.TFE_WORKSPACE}"
}

