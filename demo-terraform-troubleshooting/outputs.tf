output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web_app.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web_app.public_ip
}

output "instance_name" {
  description = "Tags of the EC2 instance"
  value       = aws_instance.web_app.tags
}
