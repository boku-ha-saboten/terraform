module "sqs" {
  source = "./module/sqs"
  name   = "terraform-test-queue"
}