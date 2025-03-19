terraform {
    required_version = "1.11.2"
  backend "s3" {
    bucket = ""
    key = "terraform.state"
    region = "ap-northeast-1"
  }
}

provider "aws" {
    region = "ap-northeast-1"
}