variable "compartment_ocid" {
  type = string
}

variable "adb_admin_password" {
  type      = string
  sensitive = true
}

variable "wallet_password" {
  type      = string
  sensitive = true
}