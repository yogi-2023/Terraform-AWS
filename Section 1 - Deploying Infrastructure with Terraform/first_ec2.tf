### first_ec2.tf

```sh
provider "aws" {
  region     = "us-east-1"
  access_key = "XXXXXXX"
  secret_key = "XXXXXXX"
}
resource "aws_instance" "Dev" {
  ami           = "ami-XXXXXX"
  instance_type = "t2.micro"
  tags = {
    Name = "DEV-EC2"
  }
}
```
