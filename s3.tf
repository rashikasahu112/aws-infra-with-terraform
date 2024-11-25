# resource "aws_s3_bucket" "example" {
#   bucket = "s3-${var.project_name}-${var.env}"

#   tags = {
#     project_name = "${var.project_name}"
#     env          = "${var.env}"
#   }
# }