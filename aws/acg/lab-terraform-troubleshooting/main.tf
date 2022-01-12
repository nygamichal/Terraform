terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.24.1"
    }
  }
  required_version = "~> 1.0"
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "web_app" {
  ami           = "ami-083602cee93914c0c"
  subnet_id     = "subnet-05a24a45984fa98f0"
  instance_type = "t3.micro"
  user_data     = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  tags = {
    Name = "${var.name}-learn"
  }
}