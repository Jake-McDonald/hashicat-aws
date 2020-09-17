module "vpc" {
  source  = "app.terraform.io/Jake-training/vpc/aws"
  version = "2.51.0"
  cidr = var.address_space
  enable_dns_hostnames = true

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Name = "${var.prefix}-vpc"
  }
}