Azure Virtual Network Terraform module
======================================

This module is used to deploy Azure Vnet resource on Azure cloud using Terraform.

Prerequisites
--------------
- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

Requirements
------------

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.8 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.0.1 |


Usage
------

```hcl
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  features {}
}

module "vnet" {
  source = "./module"
  vnet_name = "simulator-vnet"
  vnet_location = "South India"
  rg_name = "simulator-rg"
  vnet_address_space = ["10.0.0.0/16"]
  tags = {
    "Environment" = "Staging"
  }
  
}

```

Inputs
------


| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| **rg_name** | Resource group name | `string` | `NA` | yes |
| **vnet_name** | Virtual network location | `string` | `NA` | yes |
| **vnet_location** | Virtual network location | `string` | `NA` | yes |
| **tags** | Additional tags associated with the resource (*Name tag will be automatically deployed* )| `string` | `NA` | no |

Outputs
--------

| Name | Description |
|------|-------------|
| **vnet_id** | Virtual network id |

Revision History 
----------------

### Contributors

- Created by [Suyash Chandra](https://github.com/suyash1610)