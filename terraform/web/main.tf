provider "aws" {

  region = "us-east-1"

}


variable "name" {

  description = "CICD_web_machine"

}


resource "aws_instance" "devops_web_server" {

  ami = "ami-005fc0f236362e99f"

  instance_type = "t2.micro"

  key_name = "hike_devops01"


  tags = {

    Name = "${var.name}"

  }

}
