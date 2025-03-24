variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_id" {
  type    = string
}

variable "key_name" {
  type    = string
}

variable "subnet_id" {
  type    = string
}