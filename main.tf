provider "aws" {
    region = "eu-north-1" 
    }

resource "aws_instance" {
  ami = "ami-0360c520857e3138f" 
  instance_type = "t3.micro"
  }
  output "ec2_public_ip" {
   description = "public ip address of an EC2 instance"
value = "aws_instance.ec2.public_ip"
}

resource "aws_instance" {
  ami = ""
  instnace_type = "t3.micro"
}
output "ec2_public_ip" {
  description = "public ip address of an 2nd EC2 instance"
value = "aws_2ndinstance.ec2.public_ip"
}
