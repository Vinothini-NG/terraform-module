output "wallet_content" {
  value     = oci_database_autonomous_database_wallet.adb_wallet.content
  sensitive = true
}