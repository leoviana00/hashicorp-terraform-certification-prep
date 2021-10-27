#Environmental variable
provider "aws" {
  region = var.location
}

resource "aws_instance" "variable_instance_1" {
  ami           = var.linux_img
  instance_type = var.instance_type

  tags = var.tags
}

resource "aws_instance" "variable_instance_2" {
  ami           = var.linux_img
  instance_type = var.instance_type

  tags = var.tags
}