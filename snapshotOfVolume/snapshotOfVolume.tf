resource "aws_ebs_volume" "ebs_volume" {
availability_zone = "us-east-1a"
size = 2
tags {
Name = "New-PM-Volume"
}
}

resource "aws_ebs_snapshot" "ebs_snapshot" {
volume_id = "${aws_ebs_volume.ebs_volume.id}"
tags {
Name = "ebs-snapshot-PM-2018"
}
depends_on = ["aws_ebs_volume.ebs_volume"]
}
