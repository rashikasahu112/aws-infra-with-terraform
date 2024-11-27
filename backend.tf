terraform {
  backend "s3" {
    bucket         = "s3-terraform-state-files-rashika"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
  }
}