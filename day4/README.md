# Day 4 - Terraform Modules

## What I did
Refactored the Docker container setup into a reusable Terraform module
and used it to create two nginx containers on different ports.

## Steps performed
1. Created modules/nginx_container/ with main.tf, variables.tf, outputs.tf
2. Moved container logic into the module
3. Called the module twice in root main.tf with different ports (8081, 8082)
4. Ran terraform apply and verified both containers running

## Commands used
terraform init
terraform plan
terraform apply
