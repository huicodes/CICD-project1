provider "aws" {

  region = "us-east-1"

}



resource "aws_instance" "Jenkins_CI_server" {

  ami = "ami-0e86e20dae9224db8"

  instance_type = "t2.medium"

  key_name = "hike_devops01"


  tags = {

    Name = "ci-server"

  }

}
