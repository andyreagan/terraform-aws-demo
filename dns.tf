resource "aws_route53_record" "marketing_insights_platform_dns" {
  zone_id = "${data.aws_route53_zone.primary.zone_id}"
  name    = "marketing-insights-platform.${var.route53_primary_zone}"
  type    = "A"
  ttl     = "300"
  records = "${aws_instance.marketing_insights_platform.*.private_ip}"
}
