### first_ec2_assume_role.tf

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::XXXXXXXX:role/TerraformAssumeRole"
    session_name = "terraform-session"
  }
}
resource "aws_instance" "Dev" {
  ami           = "ami-XXXXXXX"
  instance_type = "t2.micro"
  tags = {
    Name = "DEV-EC2"
  }
}
