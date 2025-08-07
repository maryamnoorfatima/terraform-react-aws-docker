output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.example.public_dns
}

output "instance_ssh_command" {
  description = "Command to SSH into the instance"
  value       = "ssh ec2-user@${aws_instance.example.public_ip}"
}

output "docker_web_url" {
  description = "URL to access the Docker-hosted web page"
  value       = "http://${aws_instance.example.public_ip}"
}
