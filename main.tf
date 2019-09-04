provider "aws" {
   region = "us-east-2"
}

resource "aws_instance" "base_instance" {
   ami           = "ami-0ac019f4fcb7cb7e6"
   instance_type = "t2.micro"
   count         = 1
}
