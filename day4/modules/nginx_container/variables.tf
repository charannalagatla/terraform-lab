variable "container_name" {
  description = "Name of the container"
}

variable "container_port" {
  description = "External port to expose"
}

variable "image_name" {
  description = "Docker image to use"
  default     = "nginx:latest"
}
