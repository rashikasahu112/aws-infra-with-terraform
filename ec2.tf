resource "aws_instance" "ec2" {
  ami                         = "ami-09b0a86a2c84101e1" # ubuntu 22
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet1.id
  vpc_security_group_ids      = [aws_security_group.security_group.id]
  associate_public_ip_address = true
  user_data                   = base64encode(file("startup.sh"))
  key_name                    = "key-pair"
  tags = {
    project_name = "${var.project_name}"
    env          = "${var.env}"
  }
}

output "user_data" {
  value = base64decode(aws_instance.ec2.user_data)
}
