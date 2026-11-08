variable "ami_id" {
  type        = string
  description = "EC2 ami id for the web server"
  default     = "ami-0055977a6e828a4f4"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type for the web server"
  default     = "t2.micro"
}

variable "ec2_tags" {
  type = map
  default = {
    name = "roboshop-mongodb"
    environment = "dev"
    terraform = "true"
    project = "roboshop"
    component = "mongodb"
  }
}

variable "cidr" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "from_port" {
  type = number
  default = 0
}