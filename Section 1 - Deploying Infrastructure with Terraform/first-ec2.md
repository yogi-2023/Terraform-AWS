### Documentation Referred:

https://registry.terraform.io/

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

### first_ec2.tf ---Using access key and secret key

```sh
provider "aws" {
  region     = "us-east-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_instance" "myec2" {
    ami = "ami-XXXXX"
    instance_type = "t2.micro"
}
```
### first_ec2.tf ---Using Assume IAM Role

```sh
provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::123456789012:role/TerraformAssumeRole"  # Replace with your IAM Role ARN
    session_name = "terraform-session"
  }
}

resource "aws_instance" "myec2" {
  ami           = "ami-00c39f71452c08778"   # Replace with valid AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance"
    Env  = "Dev"
  }
}
```

🔹 Explanation

assume_role block

role_arn: The ARN of the IAM role Terraform will assume.

session_name: Name for the temporary session.

No hard-coded access key or secret key is needed — Terraform automatically uses the credentials of your AWS CLI or environment.

Tags: Helps organize and identify your EC2 instance.

Security: Using Assume Role avoids storing permanent credentials in Terraform files.

### Commands:

```sh
terraform init
terraform plan
terraform apply
```
