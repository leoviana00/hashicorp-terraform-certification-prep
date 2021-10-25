#Provider Block
provider "aws" {
  region = "us-east-1"
}

#EC2 Block w/tags
resource "aws_instance" "tags-test" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.micro"

  tags = {
    Name = "test"
    ambiente = "dev"
  }
}