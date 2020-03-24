provider "aws" {
  region = "ap-south-1"
  access_key = "${var.accesskey}"
  secret_key = "${var.secretkey}"
}
resource "aws_instance" "web" {
  ami           = "ami-03b5297d565ef30a6"
  instance_type = "t2.micro"
  subnet_id = "subnet-071ec1ec006896945"
  key_name = "master"

  tags = {
    Name = "HelloWorld"
  }
}
