variable "aws_region" {
    type = string
}

variable "instance_type" {
    type = string
}

variable "ami_id"{
    type = string
}

variable "key_name"{
    type = string
}

variable "instance_name"{
    type = string
}

variable "vpc_cidr" {
    type = string  
}

variable "public1_subnet_cidr" {
    type = string  
}

variable "public2_subnet_cidr" {
    type = string  
}

variable "subnet_choice" {
    type = string  
    default = "public1"
}
