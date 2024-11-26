# Repository: new-subscription

## Overview

This repository contains the configuration for provisioning new Azure subscriptions using reusable Terraform modules.

## Key Components

- **main.tf:**  
  Applies Terraform modules for provisioning required Azure resources.
  
- **prod.tfvars / dev.tfvars:**  
  Environment-specific variable files for production and development configurations.

- **Pipelines:**  
  - `azure-pipelines.yml`: CI/CD pipeline for production deployments.  
  - `azure-pipelines-dev.yml`: CI/CD pipeline for development deployments.

## Usage

This repository integrates the following Terraform modules:
- **resource-group:** Creates resource groups adhering to internal naming conventions.
- **vnet:** Provisions virtual networks with configurable subnets.
- **vnet-peering:** Configures VNet peering between HUB and SPOKE VNets.
- **storage-account:** Creates storage accounts with required settings.
- **key-vault:** Provisions key vaults and manages secrets and access policies.
- **sql-db:** Deploys SQL databases with customizable parameters.
