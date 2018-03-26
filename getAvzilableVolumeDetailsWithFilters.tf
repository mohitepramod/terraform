data "aws_ebs_snapshot" "ebs_volume" {

filter {
name = "tag:Name"
values = ["ebs-snapshot-PM-2018"]
}

filter {
name = "volume-size"
values = ["2"]
}
}
