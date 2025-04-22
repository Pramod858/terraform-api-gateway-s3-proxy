# Terraform AWS API Gateway → S3 Proxy

This Terraform project provisions an AWS API Gateway that acts as a **proxy** to an S3-compatible HTTP endpoint (e.g., Amazon S3, MinIO, or any object store), with a **custom domain**, **TLS certificate**, and **Route53 DNS record**.
---
## 🧱 Architecture

```mermaid
graph TD
  A[Route53 Domain]
  B[ACM Certificate<br/>DNS Validated]
  C[API Gateway<br/>Custom Domain]
  D[API Gateway<br/>REST API]
  E[proxy+ Resource<br/>with GET Method]
  F[HTTP Proxy Integration<br/>to S3 URI]
  G[S3 Bucket]

  A -->|Hosted Zone| B
  B -->|Validation| A
  B -->|Certificate| C
  C -->|Domain Name| D
  D -->|Resources| E
  E -->|Integration| F
  F -->|Proxies to| G

```
![Screenshot (5)](https://github.com/user-attachments/assets/678b7749-4709-473d-bbf5-d2db43a98125)

## 🚀 Features

- ✅ API Gateway with `{proxy+}` GET method
- ✅ HTTP Proxy integration to a given URI (e.g., S3 bucket URL)
- ✅ Custom domain name support via AWS ACM
- ✅ Automatic DNS record creation with Route 53
- ✅ Modular and reusable Terraform code

---
