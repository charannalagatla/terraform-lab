output "container_url" {
  description = "URL to access this container"
  value       = "http://localhost:${var.container_port}"
}
