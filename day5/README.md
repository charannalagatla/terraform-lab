# Day 5 - Automation and Validation

## What I did
Created a GitHub Actions CI workflow that automatically validates all
Terraform configurations whenever code is pushed to the repository.

## What the workflow does
- terraform fmt: checks code formatting is consistent
- terraform validate: checks config syntax is correct
- terraform plan: dry-runs the infrastructure changes

## Workflow file location
.github/workflows/terraform-check.yml

## How it triggers
Automatically runs on every git push and pull request.
