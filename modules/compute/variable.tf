variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "public_subnet_id" {}
variable "ssh_public_key" {}
variable "ssh_private_key" {
  description = "SSH private key"
  type        = string
  sensitive   = true
}