resource "aws_ebs_volume" "ebs_volume" {
availability_zone = "your_availability_zone"
size = 2
tags {
Name = "give_name_to_Volume"
}
}

resource "aws_ebs_snapshot" "ebs_snapshot" {
volume_id = "${aws_ebs_volume.ebs_volume.id}"
tags {
Name = "give_name_to_ebs_snapshot"
}
depends_on = ["aws_ebs_volume.ebs_volume"]
}
