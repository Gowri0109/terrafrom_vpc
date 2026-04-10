terraform {
  backend "s3" {
    bucket  = "terraform-state-file-gowri"   
    key     = "vpc/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
