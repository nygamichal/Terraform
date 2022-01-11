provider "aws" {
    region = "us-east-1"
    #Local profile for provider.
    profile = "panda"
}

# Free tier
resource "aws_instance" "panda"{
    ami = "ami-04505e74c0741db8d"
    instance_type = "t2.micro"
}

# Get private_ip from previous run.
output "my_private_ip" {
    value = aws_instance.panda.private_ip
}