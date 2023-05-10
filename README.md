# learning-terraform
A repo of my attempts at learning terraform (starting with Docker).

## Install terraform (on macOS)
- `brew tap hashicorp/tap` add the tap
- `brew install hashicorp/tap/terraform` install terraform
- `brew update && brew upgrade hashicorp/tap/terraform` update terraform
- `terraform -help` check terraform is installed
- `terraform -install-autocomplete` install autocomplete (if necessary)
- if using VSCode, install the [Terraform extension](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)

## Setup and run Docker
- `open -a Docker` open Docker
- `mkdir learn-terraform-docker-container` create a directory for the container
- `cd learn-terraform-docker-container` change into the directory
- `terraform init` initialise terraform
- `terraform apply` apply the plan
- `terraform plan` check the plan
- `terraform fmt` format the plan
- `terraform show` show the plan
- `terraform output` show the output
- `terraform state list` list the state
- `terraform validate` validate the plan
- `terraform graph | dot -Tsvg > graph.svg` graph the plan (requires [Graphviz](https://graphviz.org/download/))
- `docker ps` check the container is running
- `terraform destroy` destroy the container

## Setup and run GCP
- `brew install --cask google-cloud-sdk` install the GCP SDK
- `cd learn-terraform-gcp` change into the directory
- `terraform init` initialise terraform
- `terraform apply` apply the plan
- `terraform graph | dot -Tsvg > graph.svg` graph the plan (requires [Graphviz](https://graphviz.org/download/))
- `terraform show` show the plan
- `terraform output` show the output
- `terraform destroy` destroy the container

## Setup and run azure
- `brew install azure-cli` install the Azure CLI
- `cd learn-terraform-azure` change into the directory
- `az login` login to Azure
- `az account list --output table` list the accounts
- `az account set --subscription "<SUBSCRIPTION_ID>"` set the subscription (this is the "id" field that is returned when logging in)
- `az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"` create a service principal
- `terraform init` initialise terraform
- `terraform apply` apply the plan
- `terraform fmt` format the plan
- `terraform show` show the plan
- `terraform plan` check the plan
- `terraform state list` list the state
- `terraform destroy` destroy the container