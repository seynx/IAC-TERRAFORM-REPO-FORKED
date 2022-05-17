
variable "cidr_block" {
  description = "The cidr block of the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "region" {
  description = "The region of provider"
  type = string
  default = "us-east-1"
}