variable "container_name" {
  description = "Name of the nginx container"
  default     = "nginx_terraform"
}

variable "external_port" {
  description = "Host port to map to container"
  default     = 8080
}

variable "image_name" {
  description = "Docker image to use"
  default     = "nginx:latest"
}
