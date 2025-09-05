#!/bin/bash
# Deploy Azure AI Agent Service via Terraform
set -e

cd "$(dirname "$0")/../infra"
terraform init -upgrade
terraform plan -out=tfplan
terraform apply tfplan
