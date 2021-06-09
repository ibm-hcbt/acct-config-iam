provider "ibm" {
  region             = "us-south"
}

module "resource-groups" {
  source = "./rgroups"

  resource_group_name = var.resource_group_name
}

module "access-groups" {
  source = "./agroups"

  resource_group_name       = module.resource-groups.resource_group_name
  resource_group_id         = module.resource-groups.resource_group_id
  default_resource_group_id = module.resource-groups.default_resource_group_id
  admins_access_group_name  = var.admins_access_group_name
  users_access_group_name   = var.users_access_group_name
  sat_access_group_name     = var.sat_access_group_name
}

# module "account" {
#   source = "./account"

#   resource_group_id         = module.resource-groups.resource_group_id
#   admin_access_group_id     = module.access-groups.admins_access_group_id
#   admin_service_id          = var.admin_service_id
# }