variable "message" {
  description = "Content to write in the file"
  default     = "Hello from Terraform"
}

variable "filename" {
  description = "Name of the file to create"
  default     = "hello.txt"
}
