provider "aws" {
              profile = "default"
              region = "ap-south-1"
              access_key = "AKIAYLZYY2L65FTCGN55"
              secret_key = "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"
}
resource "aws_instance" "ec2-terraform" {
              ami ="ami-06489866022e12a14"
              instance_type = "t2.micro"
              security_groups = [aws_security_group.TerraformEc2_security1.name]
              key_name = "ec2instance"
              tags = { ec2_create = "instance1"}
}
resource "aws_default_vpc" "main" {
              tags = { Name = "main" }
}
resource "aws_ebs_volume" "vol" {
              availibility_zone = "ap-south-1"
              size              = 8
              tags = { key_name = "ec2instance"}
}
