provider "aws" {
    region = "us-east-1" 
    }

resource "aws_instance" {
  ami = "ami-0360c520857e3138f" 
  instance_type = "t2.micro"
  }
  output "ec2_public_ip" {
   description = "public ip address of an EC2 instance"
value = "aws_instance.ec2.public_ip
}
