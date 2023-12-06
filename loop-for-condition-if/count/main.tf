provider "aws" {
    region = "us-east-2"
}

resource "aws_security_group" "sg_permite_http" {

    name = "sg_permite_http"

    description = "Security Group EC2 Instance"

    ingress {

        description = "Inbound Rule"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    egress {

        description = "Outbound Rule"
        from_port = 0
        to_port = 65535
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

}

resource "aws_instance" "djb_instance" {

    count = var.create_instance ? var.number_of_instances : 0 

    ami = "ami-0a0d9cf81c479446a"

    instance_type = var.instance_type

    vpc_security_group_ids = [aws_security_group.sg_permite_http.id]

    tags = {
        Name = "WebServer-${count.index}"
    }

    user_data = <<-EOF
                #!/bin/bash
                sudo yum update -y
                sudo yum install httpd -y
                sudo systemctl start httpd
                sudo systemctl enable httpd
                sudo bash -c 'echo Criando o Web Server com Terraform na DSA usando o host $(hostname -f) > /var/www/html/index.html'
                EOF
}


