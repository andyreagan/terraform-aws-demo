# Use the AWS providers
provider "aws" {
  insecure = "true"
  region   = "us-east-1"
}

# Zone in which to create DNS Entries
data "aws_route53_zone" "primary" {
  name         = "${var.route53_primary_zone}"
  private_zone = true
}

# Information about the networking of the account. All variables should be set
# in the corresponding environment file in .env/*
data "aws_vpc" "default_vpc" {
  id = "${var.vpc_id}"
}

data "aws_subnet" "priv_az1" {
  id = "${var.priv_subnet_az1}"
}

data "aws_subnet" "priv_az2" {
  id = "${var.priv_subnet_az2}"
}

data "aws_subnet" "priv_az3" {
  id = "${var.priv_subnet_az3}"
}
