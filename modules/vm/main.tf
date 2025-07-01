resource "tls_private_key" "rsa_4096" {
    algorithm       = "RSA"
    rsa_bits        = 4096
}

resource "aws_key_pair" "key_pair" {
    key_name        = var.aws_key_pair_name
    public_key      = tls_private_key.rsa_4096.public_key_openssh
}

resource "local_file" "private_key" {
    filename        = "${path.module}/deploy-key.pem"
    content         = tls_private_key.rsa_4096.private_key_pem
    file_permission = "0600"
}
resource "aws_instance" "web" {
    count           = var.instance_count
    ami             = var.ami_id # Replace with a valid AMI ID for your region
    instance_type   = var.instance_type
    key_name        = aws_key_pair.key_pair.key_name

    tags = {
        Name        = "${var.vm_name}-${count.index + 1}"
    }
}