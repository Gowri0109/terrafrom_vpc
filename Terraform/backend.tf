terraform {
  backend "s3" {
    bucket         = "gowri-terraform-state"
    key            = "vpc/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}