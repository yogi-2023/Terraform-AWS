###single-ec2tag file

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::XXXXXX:role/TerraformAssumeRole"
    session_name = "terraform-session"
  }
}
variable "common_tags" {
  type = map(string)
  default = {
    Environment = "UAT"
    Owner       = "Alice"
    Project     = "ProjectA"
    CostCenter  = "CC1001"
    Department  = "Engineering"
    Application = "WebApp"
    Team        = "Backend"
    Purpose     = "Testing"
  }
}
resource "aws_instance" "UAT" {
  ami           = "ami-XXXXXX"
  instance_type = "t2.micro"
  tags = merge(var.common_tags, {
    Name = "UAT-EC2"
    Type = "App"
  })
}
