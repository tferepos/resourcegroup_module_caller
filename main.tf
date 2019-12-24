//--------------------------------------------------------------------
// Variables
variable "resourcegroup_demo_client_id" {}
variable "resourcegroup_demo_client_secret" {}
variable "resourcegroup_demo_subscription_id" {}
variable "resourcegroup_demo_tenant_id" {}

//--------------------------------------------------------------------
// Modules
module "resourcegroup_demo" {
  source  = "app.terraform.io/ServiceNow-ITOM/resourcegroup_demo/azure"
  version = "1.0.0"

  client_id = "${var.resourcegroup_demo_client_id}"
  client_secret = "${var.resourcegroup_demo_client_secret}"
  subscription_id = "${var.resourcegroup_demo_subscription_id}"
  tenant_id = "${var.resourcegroup_demo_tenant_id}"
}
