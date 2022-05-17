
#Outputs (To output various resources attributes)
output "vpc_id" {
  description = "The ID of the VPC"
  sensitive = false
  value = local.vpc_id
}

output "aws_instance" {
  description = "The Public IP of the instance"
  sensitive = false
  value = aws_instance.web.public_ip
}