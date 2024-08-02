terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "Prod/terraform.tfstate"
    region = "us-east-1"
  }
}
