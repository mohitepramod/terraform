resource "aws_ebs_volume" "example" {
size = 10
availability_zone = "us-east-1"
tags {
Name = "Volume-PM-New"
}
}
