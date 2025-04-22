output "api_gateway_invoke_url" {
  description = "Base Invoke URL of the API Gateway"
  value       = "${aws_api_gateway_stage.api_stage.invoke_url}"
}

output "custom_domain_name" {
  description = "Custom domain name of the API Gateway"
  value       = aws_api_gateway_domain_name.custom_domain.domain_name
}

output "cloudfront_alias_domain" {
  description = "CloudFront alias target for Route53"
  value       = aws_api_gateway_domain_name.custom_domain.regional_domain_name
}
