variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "ap-northeast-1"
}

variable "instance_type" {
  description = "The type of the EC2 instance."
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance."
  type        = string
  default     = "ami-0aec5ae807cea9ce0"
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the EC2 instance in."
  type        = string
  default     = "subnet-0b0313ed15fb24c03"
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the EC2 instance."
  type        = string
  default     = "sg-02b2aac418b53e07e"
}

variable "key_name" {
  description = "The name for the AWS Key Pair."
  type        = string
  default     = "ec2-key-from-id-rsa"
}

variable "public_key_path" {
  description = "The path to the public key file to be used for the EC2 instance."
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "instance_name" {
  description = "The name tag for the EC2 instance."
  type        = string
  default     = "public ec2"
}
