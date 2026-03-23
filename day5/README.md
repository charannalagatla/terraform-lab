# Day 5 - Dynamic Infrastructure Creation (Bonus)

## What I did
Extended the module-based infrastructure from Day 4 to dynamically
create multiple nginx containers using Terraform's for_each expression
instead of manually defining each container separately.

## Why this is better than Day 4
In Day 4, each container required its own module block in main.tf.
To add a new container you had to copy-paste the entire block and
change the values manually. In Day 5, you only edit the container_config
list in terraform.tfvars — main.tf never changes regardless of how
many containers you need.

## Directory Structure
```
day5/
├── main.tf              # calls module dynamically using for_each
├── variables.tf         # declares container_config as list of objects
├── outputs.tf           # prints all container URLs dynamically
├── terraform.tfvars     # defines the actual container list
├── README.md
└── modules/
    └── nginx_container/
        ├── main.tf      # docker image and container resources
        ├── variables.tf # accepts container_name, container_port, image_name
        └── outputs.tf   # returns container_url and container_name
```

## How for_each works here
The container_config variable holds a list of objects:

container_config = [
  { name = "web1", port = 8081 },
  { name = "web2", port = 8082 },
  { name = "web3", port = 8083 }
]

Terraform converts this list into a map using a for expression:
{ for container in var.container_config : container.name => container }

Result:
{
  "web1" = { name = "web1", port = 8081 },
  "web2" = { name = "web2", port = 8082 },
  "web3" = { name = "web3", port = 8083 }
}

for_each then creates one module instance per map entry:
- module.nginx_containers["web1"] on port 8081
- module.nginx_containers["web2"] on port 8082
- module.nginx_containers["web3"] on port 8083

## How to add a new container
Only edit terraform.tfvars — add one entry to the list:

{ name = "web4", port = 8084 }

Then run terraform apply. Terraform will only create the new
container — existing ones are untouched.

## Commands used
terraform init
terraform plan
terraform apply

## Output after apply
container_urls = [
  "http://localhost:8081",
  "http://localhost:8082",
  "http://localhost:8083",
]

## Verification
After terraform apply, all containers are accessible at:
http://localhost:8081
http://localhost:8082
http://localhost:8083

Run docker ps to confirm all containers are running.

## Terraform concepts used
- for_each on a module block
- list(object) variable type
- for expression to convert list to map
- each.value to access current iteration data
- Dynamic output collection using for expression
