variable "vpc_CIDR" {
  description = "VPC CIDR Range"
  type = string
}

variable "subnet_CIDR" {
  description = "Subnets CIDR"
  type = list(string)
}

variable "subnet_name" {
  description = "Subnets_names"
  type = list(string)
  default = [ "PublicSubnet1", "PublicSubnet2"]
}