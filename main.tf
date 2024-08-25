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