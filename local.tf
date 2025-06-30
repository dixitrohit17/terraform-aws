locals {
    resource_prefix         = "${var.environment}-${var.region}"
    vm_name                 = "${local.resource_prefix}-vm"
    storage_name            = "${local.resource_prefix}-storage"
    vpc_name                = "${local.resource_prefix}-vpc"
    vm_subnet_name          = "${local.vm_name}-subnet"
    storage_subnet_name     = "${local.storage_name}-subnet"
    security_group_name     = "${local.resource_prefix}-sg"
    key_pair_name           = "${local.vm_name}-${var.aws_key_pair_name}"
}