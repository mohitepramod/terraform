provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "w1_security_group"{
name = "SG-PM-2018"
description = "Test Security group 2018"

ingress {
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
    cidr_blocks = [ "0.0.0.0/0" ]
  }

egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "w1_instance" {
instance_type = "t2.micro"
ami = "ami-1853ac65"
vpc_security_group_ids = [ "${aws_security_group.w1_security_group.id}" ]
key_name = "samplekeyPM-1"
tags { Name = "w1-instance-PM" }


depends_on = ["aws_security_group.w1_security_group"]
}


resource "aws_eip" "eip" {
instance = "${aws_instance.w1_instance.id}"
}

