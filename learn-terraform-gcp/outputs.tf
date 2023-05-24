output "ip" {
  value = google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip
}

output "db_name" {
  value = google_sql_database_instance.main.name
}

output "db_user" {
  value = google_sql_user.users.name
}

output "db_password" {
  value = google_sql_user.users.password
  sensitive = true
}