#EC2の作成
resource "aws_instance" "terraform-ec2" {
  ami            = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = var.subnet_id
  key_name       = var.key_name

  tags = {
    Name         = "terraform-ec2"
    ResourceName =  "aws-ec2"
  }
}