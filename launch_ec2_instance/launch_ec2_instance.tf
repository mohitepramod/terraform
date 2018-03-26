provider "aws" {
        access_key = "Your_Access_Key"
        secret_key = "Your_Secret_Key"
        region = "Your_region"

}

resource "aws_instance" "instanceName"{
        ami = "ami-1234567"
        instance_type = "t2.micro"
        key_name = "Your_key"
        security_groups = ["default"]
        tags { Name = "InstanceName" }
}
