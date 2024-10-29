output "public_ip" {
  value = module.ec2.public_ip
}

# Output private-key (sensitive)
output "private_key_openssh" {
  value     = module.ec2.private_key_openssh
  sensitive = true # Marks it as sensitive, so it’s hidden in logs
}

