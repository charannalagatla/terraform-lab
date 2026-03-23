# Day 3 - Managing Containers with Terraform

## What I did
Used Terraform with the Docker provider to pull an nginx image
and run it as a container with port mapping.

## Steps performed
1. Configured the kreuzwerker/docker provider in main.tf
2. Defined docker_image resource to pull nginx:latest
3. Defined docker_container resource with port 80 mapped to 8080
4. Added outputs.tf to print the service URL
5. Ran terraform apply and verified nginx at http://localhost:8080

## Commands used
terraform init
terraform plan
terraform apply
