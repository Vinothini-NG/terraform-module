module "network" {
  source = "../modules/network"

  compartment_ocid = var.compartment_ocid
}

module "compute" {
  source = "../modules/compute"
  compartment_ocid = var.compartment_ocid
  tenancy_ocid     = var.tenancy_ocid
  public_subnet_id = module.network.public_subnet_id
  ssh_public_key   = var.ssh_public_key
  ssh_private_key  = var.ssh_private_key
}