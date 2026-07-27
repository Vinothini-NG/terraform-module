module "network" {
  source = "../modules/network"
  compartment_ocid = var.compartment_ocid
}

module "compute" {
  source = "../modules/compute"
  compartment_ocid = var.compartment_ocid
  tenancy_ocid     = var.tenancy_ocid
  public_subnet_id = module.network.public_subnet_id
  private_subnet_id = module.network.private_subnet_id
  ssh_public_key   = var.ssh_public_key
  ssh_private_key  = var.ssh_private_key
  wallet_content = module.database.wallet_content
}

module "database" {
  source = "../modules/database"

  compartment_ocid   = var.compartment_ocid
  adb_admin_password = var.adb_admin_password
  wallet_password    = var.wallet_password
}

module "loadbalancer" {
  source = "../modules/loadbalancer"
  compartment_ocid = var.compartment_ocid
  public_subnet_id = module.network.public_subnet_id
  backend_ip = module.compute.application_node1_private_ip
}