provider "aws" {
  region = "us-west-2"
}

variable "user_environment" {
    type = list 
    default = ["dev_usr","stage_usr","prod_usr"]
}


resource "aws_iam_user" "user" {
    name = var.user_environment[count.index] #"user_${count.index}"
    count = 3 
    path = "/system/"
}