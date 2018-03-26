data "aws_ebs_snapshot" "ebs_volume" {

filter {
name = "tag:Name"
values = ["Name_of_your_snapshot"]
}

filter {
name = "volume-size"
values = ["2"]
}
}
