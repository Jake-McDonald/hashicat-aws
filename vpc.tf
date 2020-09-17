module "vpc" {
  source  = "app.terraform.io/Jake-training/vpc/aws"
  version = "2.51.0"
    cidr_block = var.address_space
  enable_dns_hostnames = true

  tags = {
    name = "${var.prefix}-vpc"
  }
}