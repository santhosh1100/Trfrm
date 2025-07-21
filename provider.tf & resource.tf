#....provider.....

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.4.0"
    }
  }
}

provider "aws" {
   profile = "default"
   region = "us-west-1"
 }

#.....resource.....
  
resource "aws_instance" "Instance11" {
  ami           = "ami-01707ae9e637f2048"
  instance_type = "t2.micro"
  key_name      = "insta_key"
  availability_zone = "us-west-1a"

  tags = {
    Name = "Instance11"
  }
}
