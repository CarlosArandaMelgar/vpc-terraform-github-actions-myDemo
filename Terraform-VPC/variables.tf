variable "vpc_CIDR" {
  description = "VPC CIDR Range"
  type = string
}

variable "subnet_CIDR" {
  description = "Subnets CIDR"
  type = list(string)
}