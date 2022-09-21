provider "aws" {
              profile = "default"
              region = "us-east-1"
              access_key =
              secret_key =
}
resource "aws_instance" "ec201" {
              ami ="ami-087c17d1fe0178315"
              instance_type = "t2.micro"
              security_groups = [aws_security_group.TerraformEc2_security1.name]
              key_name = "ec2instance"
              tags = { ec2_create = "instance1"}
}
resource "aws_default_vpc" "main" {
              tags = { Name = "main" }
}
resource "aws_ebs_volume" "vol" {
              availibility_zone = "us-east-1a"
              size              = 8
              tags = { key_name = "ec2instance"}
}
