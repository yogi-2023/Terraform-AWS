# AWS Provider and Authentication with Terraform

This document explains how to configure the **AWS provider** in Terraform, set up authentication, and manage resources using AWS CLI and Terraform commands.

---

## 🔹 AWS Documentation Reference
- [Getting Started with AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

---

## 🔹 AWS Provider Configuration (`aws-provider-config.tf`)

```hcl
provider "aws" {
  region = "us-east-1"   # Set your preferred AWS region
}

# Example: Create a simple IAM user
resource "aws_iam_user" "testuser" {
  name = "testuser"
}
Notes:

The provider block defines which AWS region Terraform will deploy resources to.

You can authenticate using:

AWS access key & secret key (not recommended for production)

AWS IAM Role with Assume Role (recommended for security)
