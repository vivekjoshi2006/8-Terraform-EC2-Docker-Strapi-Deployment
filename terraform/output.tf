output "strapi_url" {
  description = "Copy this URL to access Strapi"
  value       = "http://${aws_instance.strapi_server.public_ip}:1337"
}

output "ec2_public_ip" {
  description = "Aapke EC2 server ka Public IP"
  value       = aws_instance.strapi_server.public_ip
}