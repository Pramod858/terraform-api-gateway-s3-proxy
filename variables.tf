variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "api_name" {
  description = "Name of the API Gateway REST API"
  type        = string
  default     = "s3-assets-api"
}

variable "api_description" {
  description = "Description of the API Gateway REST API"
  type        = string
  default     = "API Gateway for serving S3 assets"
}

variable "proxy_uri" {
  description = "URI of the S3 bucket to proxy"
  type        = string
  default     = "https://<bucket-name>.s3.<region>.amazonaws.com/{proxy}"
}

variable "stage_name" {
  description = "Stage name for the deployment"
  type        = string
  default     = "v1"
}

variable "domain_name" {
  description = "Custom domain for ACM certificate"
  type        = string
  default     = "pramodpro.xyz" # Replace with your domain name
}

variable "custom_domain_name" {
  description = "Custom domain for API Gateway"
  type        = string
  default     = "api.pramodpro.xyz" # Replace with your custom domain name
}

variable "common_tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Environment = "Development"
    Owner       = "Pramod Badiger"
    Project     = "S3 API Proxy"
  }
}
