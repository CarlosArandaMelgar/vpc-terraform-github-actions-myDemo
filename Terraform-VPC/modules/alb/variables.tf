variable "sg_id" {
  description = "SG ID for ALB"
  type = string
}

variable "subnets" {
  description = "ALB ID's"
  type = list(string)
}

variable "vpc_id" {
  description = "ID VPC"
  type = string
}

variable "ec2_ids" {
  description = "EC2 INSTANCES ID's"
  type = list(string)
}