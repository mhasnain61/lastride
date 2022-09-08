resource "aws_vpc" "mo_vpc" {
  cidr_block = var.cidr

  tags = {
    Name = "myvpc"
  }
}

resource "aws_s3_bucket" "alpha-buckett150" {
  bucket = var.bucket

  tags = {
    Name = "my-bucketttt-23"
  }
}

resource "aws_instance" "ansible" {
  ami = var.ami
  instance_type = var.instancetype
  key_name = var.key
  count = 4
}
