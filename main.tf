provider "aws" {
    region = "us-east-1"
    #Local profile for provider.
    profile = "mislav" #Name must exists inside ~/.aws/credentials

    # Instead of profile, keys could be typed here - Bad practice..:)
    # access_key_id=..
    # secret_access_key=..
}

# Free tier
resource "aws_instance" "mislav"{
    ami = "ami-04505e74c0741db8d"
    instance_type = "t2.micro"
    key_name = "key_name"

    connection{
        host        = self.public_ip
        type        = "ssh"
        user        = "ubuntu"
        private_key = file("~/Downloads/key_name.pem")
    }

    # Execute on machine which will be created, e.g. EC2
    provisioner "remote-exec" {
        inline = [
            "mkdir -p /home/ubuntu/catalog",
            "echo 123 > /home/ubuntu/catalog/file.txt",
        ]
    }
    # provisioner "local-exec" # Execute on local machine where terraform apply run.
}