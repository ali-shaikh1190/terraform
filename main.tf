# Creating VPC
module "vpc" {
  source = "./modules/vpc"

  name                = "${var.name}"
  cidr                = "${var.cidr}"
  azs                 = "${var.azs}"
  az_no_private       = "${var.az_no_private}"
  private_subnets     = "${var.private_subnets}"
  az_no_public        = "${var.az_no_public}"
  public_subnets      = "${var.public_subnets}"
  az_no_db            = "${var.az_no_db}"
  database_subnets    = "${var.database_subnets}"
  az_no_ec            = "${var.az_no_ec}"
  elasticache_subnets = "${var.elasticache_subnets}"
  az_no_rs            = "${var.az_no_rs}"
  redshift_subnets    = "${var.redshift_subnets}"

  create_database_subnet_group = true
  map_public_ip_on_launch = false
  enable_nat_gateway = true
  single_nat_gateway = true
  enable_vpn_gateway = false

  enable_s3_endpoint       = false
  enable_dynamodb_endpoint = false

  tags = {
    Owner       = "dev"
    Environment = "staging"
    Name        = "dev staging"
  }
}
