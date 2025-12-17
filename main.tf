provider "aws" {
  region = var.aws_region
}

resource "aws_key_pair" "deployer_key" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}

resource "aws_instance" "public_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.deployer_key.key_name
  security_groups = ["sg-02b2aac418b53e07e"]
  subnet_id = var.subnet_id
  tags = {
    Name = var.instance_name
  }
}
