# Day 1 - Introduction to Terraform

## What I did
Used the Terraform local provider to create a text file using configuration code.

## Steps performed
1. Wrote main.tf using the local_file resource
2. Added variables.tf to parameterize the filename and message
3. Added outputs.tf to display the file path after apply
4. Ran: terraform init → terraform plan → terraform apply
5. Verified hello.txt was created with correct content

## Commands used
terraform init
terraform plan
terraform apply
