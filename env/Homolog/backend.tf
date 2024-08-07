terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "Homolog/terraform.tfstate"
    region = "us-east-1"
  }
}
