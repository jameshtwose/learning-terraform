output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.app_server.id
}
output "instance_public_id" {
  description = "The public ID of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}