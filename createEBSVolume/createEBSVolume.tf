resource "aws_ebs_volume" "example" {
size = 10
availability_zone = "Your_Availability_Zone"
tags {
Name = "Give_Name_to_Your_volume"
}
}
