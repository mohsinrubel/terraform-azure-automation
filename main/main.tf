module "resource_group" {
  source            = "../modules/resource_group"
  resource_group_name = var.resource_group_name
  location          = var.location
}
# module "virtual-network" {
# source = "../modules/virtual_network"
# virtual_network_name            = var.virtual_network_name
# resource_group_name             = var.resource_group_name
# location                        = var.location
# virtual_network_address_space   = var.virtual_network_address_space
# subnet_name                     = var.subnet_name
# subnet_address_prefix           = var.subnet_address_prefix
# }


# module "network-interface" {
#     source = "../modules/network-interface"
#     vmname              = var.vmname
#     location            = var.location
#     resource_group_name = var.resource_group_name
#     subnet_id           = module.virtual-network.subnet_id
# }
# module "virtual-machine" {
#     source = "../modules/virtual-machine"
#     vmname                  = var.vmname
#     location                = var.location
#     resource_group_name     = var.resource_group_name
#     network_interface_ids   = [module.network-interface.nic_id]
#     vm_size                 = var.vm_size
#     os_disk_type            = var.os_disk_type
#     admin_usename           = var.admin_usename
#     admin_password          = var.admin_password
#     image_publisher         = var.image_publisher
#     image_offer             = var.image_offer
#     image_sku               = var.image_sku
# }