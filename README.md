# Azure AI Agent Service Deployment via Terraform

This repository provides a step-by-step tutorial to deploy an Azure AI Agent Service using Terraform.

## Prerequisites
- Azure account
- [Terraform](https://www.terraform.io/downloads.html) installed
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed

## Repository Structure
```
azure-ai-agent-service-terraform/
├── README.md
├── infra/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── provider.tf
├── scripts/
│   └── deploy.sh
└── .gitignore
```

## Quickstart
1. Clone this repo
2. Update variables in `infra/variables.tf`
3. Run the deployment script:
   ```bash
   ./scripts/deploy.sh
   ```
4. Check outputs and verify in Azure Portal

## Cleanup
To destroy resources:
```bash
cd infra
terraform destroy
```

## Troubleshooting
See the Troubleshooting section below for common issues.
