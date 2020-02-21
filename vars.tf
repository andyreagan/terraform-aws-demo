variable "n_ec2_instances" {
  type    = "string"
  default = "1"
}

variable "keypair" {
  type = "string"
}

variable "stack_id" {
  type    = "string"
}

variable "account_id" {
  type = "string"
}

variable "vpc_id" {
  type = "string"
}

variable "aws_instance_ami" {}

variable "route53_primary_zone" {
  type = "string"
}

variable "aws_instance_type" {
  type = "string"
}

variable "priv_subnet_az1" {
  type = "string"
}

variable "priv_subnet_az2" {
  type = "string"
}

variable "priv_subnet_az3" {
  type = "string"
}

variable "env" {
  type = "string"
}
