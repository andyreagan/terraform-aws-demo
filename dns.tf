resource "aws_route53_record" "ds_seminar_demo_dns" {
  zone_id = "${data.aws_route53_zone.primary.zone_id}"
  name    = "reagansmash.${var.route53_primary_zone}"
  type    = "A"
  ttl     = "300"
  records = "${aws_instance.ds_seminar_demo.*.private_ip}"
}
