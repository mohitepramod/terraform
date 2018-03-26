provider "aws" {
        access_key = "AKIAJ57E5ATJL6TQRQFQ"
        secret_key = "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"
        region = "us-east-1"

}

resource "aws_instance" "instanceName"{
        ami = "ami-1853ac65"
        instance_type = "t2.micro"
        key_name = "samplekeyPM-1"
        security_groups = ["default"]
        tags { Name = "terraform-instance" }
}
