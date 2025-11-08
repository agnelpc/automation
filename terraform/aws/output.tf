output "public_ip" {
  value = aws_instance.agnel_ec2.public_ip
}

output "public_dns" {
  value = aws_instance.agnel_ec2.public_dns
}

output "key_name" {
  value = aws_key_pair.agnel_key.key_name
}