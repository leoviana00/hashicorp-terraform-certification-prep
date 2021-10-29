#AWS Instance
resource "aws_instance" "module_instance_1" {
    ami = data.aws_ami.windows.id
    instance_type = "t2.micro"
    availability_zone = var.availability_zone
}

#AMI FIlter for windows server 2019
data "aws_ami" "windows" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["801119661308"] 

}

#EBS volume and attachment
resource "aws_ebs_volume" "example" {
  availability_zone = var.availability_zone
  size              = 40

  tags = {
    Name = "Data Drive"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.example.id
  instance_id = aws_instance.module_instance_1.id
}