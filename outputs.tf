output "public_ip" {
  description = "The public IP address of the EC2 instance."
  value       = aws_instance.public_ec2.public_ip
}

output "instance_id" {
  description = "The ID of the EC2 instance."
  value       = aws_instance.public_ec2.id
}

output "ssh_command" {
  description = "The command to SSH into the EC2 instance."
  value       = "ssh -i ${replace(var.public_key_path, ".pub", "")} ubuntu@${aws_instance.public_ec2.public_ip}"
}
