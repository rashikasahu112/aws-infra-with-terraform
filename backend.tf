terraform {
  backend "s3" {
    bucket         = "s3-terraform-state-files-rashikasahu"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
  }
}
