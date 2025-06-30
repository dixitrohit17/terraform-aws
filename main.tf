module "aws_vm" {
    source = "./modules/vm"
    aws_key_pair_name = var.aws_key_pair_name
    ami_id = var.ami_id
    instance_type = var.instance_type
    vm_name = local.vm_name
    instance_count = var.instance_count
}  