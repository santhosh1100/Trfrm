***resource.tf file***

resource "aws_instance" "instance2" {
  ami               = var.myamiid
  instance_type     = var.myinstype
  key_name          = var.mykeyname
  availability_zone = var.myaz

  tags = {
    Name = "instance22"
  }
}
 
***variable.tf file***

variable "myamiid" {
  description = "AMI ID to use for the instance"
  type        = string
  default     = "ami-01707ae9e637f2048"
}

variable "myinstype" {
  description = "Instance type to launch"
  type        = string
  default     = "t2.medium"
}

variable "mykeyname" {
  description = "SSH key name for the instance"
  type        = string
  default     = "insta_key"
}

variable "myaz" {
  description = "Availability zone for the instance"
  type        = string
  default     = "us-west-1a"
}
