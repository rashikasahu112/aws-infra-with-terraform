variable "project_name" {
  default = "demo"
}
variable "env" {
  description = "environment"
}
variable "bucket_name" {
  description = "aws bucket to store terraform state files"
}
variable "aws_region" {
  default = "ap-south-1"
}