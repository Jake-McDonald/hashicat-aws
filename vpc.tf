module "vpc" {
  source  = "app.terraform.io/Jake-training/vpc/aws"
  version = "2.51.0"
  cidr = var.address_space

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  enable_dns_hostnames = true

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Name = "${var.prefix}-vpc"
  }
}