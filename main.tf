resource "aws_instance" "ds_seminar_demo" {
  ami                          = "${var.aws_instance_ami}"
  instance_type                = "${var.aws_instance_type}"
  subnet_id                    = "${element(list(data.aws_subnet.priv_az1.id, data.aws_subnet.priv_az2.id, data.aws_subnet.priv_az3.id), count.index % 3)}"
  key_name                     = "${var.keypair}"
  count                        = "${var.n_ec2_instances}"
  vpc_security_group_ids       = ["sg-2eb93d54", "sg-22b93d58", "sg-c14dca88"]

  root_block_device  {
    delete_on_termination = true
    volume_type           = "gp2"
    volume_size           = 100
  }

  tags = {
    Name           = "${var.stack_id}-${var.env}-ec2"
    Provisioner    = "Terraform"
    application    = "${var.stack_id}"
    businessowner  = "Andy Reagan///areagan@massmutual.com"
    classification = "b"
    costcenter     = "100230"
    environment    = "${var.env == "prd" ? "dsprd" : "dsnprd"}"
    role           = "Infrastructure"
    supportowner   = "Andy Reagan///areagan@massmutual.com"
  }
}
