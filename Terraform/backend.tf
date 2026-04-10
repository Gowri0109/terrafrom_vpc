terraform {
  backend "s3" {
    bucket  = "terraform-state-file"   
    key     = "vpc/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
