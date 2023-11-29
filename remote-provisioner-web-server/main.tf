resource "aws_instance" "djb_instance" {
  
  ami = "ami-0a0d9cf81c479446a"  
  
  instance_type = var.instance_type
  
  key_name = "login-ec2"

  tags = {
    Name = "lab3-t2-terraform"
  }

  provisioner "remote-exec" {
    
    inline = ["sudo yum update -y", 
              "sudo yum install httpd -y", 
              "sudo systemctl start httpd", 
              "sudo bash -c 'echo Criando o Primeiro Web Server com Terraform na DSA > /var/www/html/index.html'"]

    connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = file("../login-ec2.pem")
      host     = self.public_ip
    }
  }
}
