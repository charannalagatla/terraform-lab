output "service_url" {
  description = "URL to access the nginx container"
  value       = "http://localhost:${var.external_port}"
}
