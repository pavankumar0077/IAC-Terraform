output "public_ip_ec2" {
  value = aws_instance.test-server.public_ip
}

output "eip" {
  value = aws_eip.lb.public_ip
}
