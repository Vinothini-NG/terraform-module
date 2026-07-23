variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "public_subnet_id" {}
variable "private_subnet_id" {
  type = string
}
variable "ssh_public_key" {}
variable "ssh_private_key" {
  description = "SSH private key"
  type        = string
  sensitive   = true
}