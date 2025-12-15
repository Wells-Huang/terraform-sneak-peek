provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "public_ec2" {
  ami           = "ami-0aec5ae807cea9ce0"
  instance_type = "t3.micro"
  security_groups = ["sg-05085bae7a1b6573c"]
  subnet_id = "subnet-0b0313ed15fb24c03" # Assuming the VPC ID provided is actually a subnet ID for the instance to be launched in
  tags = {
    Name = "public ec2"
  }
}
