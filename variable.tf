variable "aws_instance_type" {
  description = "Type of AWS instance to launch"
  type = string
  validation {
    condition = var.aws_instance_type=="t2.micro" || var.aws_instance_type=="t3.micro"
    error_message = "only t2 and t3 micro available"
    }
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type = number
  default = 20
}

variable "root_volume_type" {
  description = "Type of the root volume"
  type = string
  default = "gp2"
}

variable "ec2_config" {
  type = object({
    v_size = number
    v_type = string 
  })
  default = {
    v_size = 20
    v_type = "gp2"
  }
}