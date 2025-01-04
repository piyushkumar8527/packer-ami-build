variable "region"{
  type =  string
  default = "us-east-1"
}

variable "instance_type"{
  type =  string
  default = "t2.micro"
}

variable "golden_ami_name"{
  type =  string
  default = "golden-ami"
}


variable "iam_instance_profile"{
  type =  string
  default = "ec2-ssm-role"
}