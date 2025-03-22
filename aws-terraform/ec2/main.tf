#EC2の作成
resource "aws_instance" "amazon-linux" {
  ami            = "ami-0599b6e53ca798bb2"
  instance_type  = "t2.micro"

  tags = {
    Name         = "terraform-ec2"
    ResourceName =  "aws-ec2"
  }
}