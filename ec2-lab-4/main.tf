#Provider Block
provider "aws" {
  region = "us-east-1"
}

#EC2 Block 
resource "aws_instance" "web_tags" {
  availability_zone = "us-east-1b"
  ami           = "ami-0416f96ae3d1a3f29"
  instance_type = "t2.micro"

  tags = {
    Name     = "web01"
    ambiente = "dev"
  }
}

#Vplume Block
resource "aws_ebs_volume" "vol_web_tags" {
  availability_zone = "us-east-1b"
  size              = 40

  tags = {
    Name     = "web01"
    ambiente = "dev"
  }
}

#Attachment Block
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.vol_web_tags.id
  instance_id = aws_instance.web_tags.id
}