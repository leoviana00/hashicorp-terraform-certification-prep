# Create you provider code block
# Set a variable for region
provider "aws" {
    region = var.region
}

# Create an EC2 instance code block
# Set a variable for instace_id
# Set variable for ami_id
# Set variables for tags HINT: Variable type will be map
resource "aws_instance" "test" {
    ami = var.ami_id
    instance_type = var.instance_id
    tags = var.tags
}