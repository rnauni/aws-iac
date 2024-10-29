output "instance_id" {
  value = aws_instance.ec2_instance.id
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

# Output private-key (sensitive)
output "private_key_openssh" {
  value     = tls_private_key.ec2_key.private_key_openssh
  sensitive = true # Marks it as sensitive, so it’s hidden in logs
}

output "key_name" {
  value = aws_key_pair.ec2_key.key_name
}
