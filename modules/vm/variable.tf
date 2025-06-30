# Define a variable in Terraform
variable "aws_key_pair_name" {
    description = "Name of the AWS key pair"
    type        = string
}
variable "ami_id" {
    description = "AMI ID for the EC2 instance"
    type        = string
}
variable "instance_type" {
    description = "Instance type for the EC2 instance"
    type        = string
}
variable "vm_name" {
    description = "Name of the VM"
    type        = string
}
variable "instance_count" {
    description = "Number of EC2 instances to create"
    type        = number
}