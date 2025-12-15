provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_key_pair" "deployer_key" {
  key_name   = "ec2-key-from-id-rsa"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "public_ec2" {
  ami           = "ami-0aec5ae807cea9ce0"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.deployer_key.key_name
  security_groups = ["sg-02b2aac418b53e07e"]
  subnet_id = "subnet-0b0313ed15fb24c03" 
  tags = {
    Name = "public ec2"
  }
}
