output "ec2_private_ip" {
  value = aws_instance.terraform-ec2.ec2_private_ip
}