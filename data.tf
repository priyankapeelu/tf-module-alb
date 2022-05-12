data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "terraformd63"
    key    = "alb/${var.ENV}/terraform.tfstate"
    region = "us-east-1"
  }
}