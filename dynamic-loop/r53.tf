resource "aws_route53_record" "www" {
  #count=length(var.instances)
  for_each        = aws_instance.frontend_server
  zone_id         = var.zone_id
  name            = "${each.key}.${var.domain_name}"
  allow_overwrite = true
  type            = "A"
  ttl             = 1
  records         = [each.value.private_ip]
}