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

AWS CLI credentials configured via aws configure

🔹 AWS CLI Authentication
Before running Terraform, ensure AWS CLI is configured:

sh
Copy code
aws configure
You will be prompted for:

AWS Access Key ID

AWS Secret Access Key

Default region name (e.g., us-east-1)

Default output format (e.g., json)

🔹 Terraform Commands Used
Initialize Terraform (downloads required providers):

sh
Copy code
terraform init
Plan changes (see what Terraform will create/modify):

sh
Copy code
terraform plan
Apply changes (deploy resources):

sh
Copy code
terraform apply -auto-approve
Destroy resources (delete everything Terraform created):

sh
Copy code
terraform destroy -auto-approve
