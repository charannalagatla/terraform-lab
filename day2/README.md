# Day 2 - Variables and Multiple Configurations

## What I did
Parameterized the Terraform config using .tfvars files to support
different environments (dev and prod).

## Steps performed
1. Created variables.tf to declare input variables
2. Created dev.tfvars with dev-specific values
3. Created prod.tfvars with prod-specific values
4. Ran Terraform separately for each environment

## Commands used
terraform init
terraform apply -var-file="dev.tfvars"
terraform apply -var-file="prod.tfvars"
