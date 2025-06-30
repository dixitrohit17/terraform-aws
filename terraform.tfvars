region                  = "ap-south-1"
environment             = "dev"
aws_key_pair_name       = "login-key"
ami_id                  = "ami-0d03cb826412c6b0f"  ##"ami-062f0cc54dbfd8ef1" # Replace with a valid AMI ID for your region 
instance_type           = "t2.micro"
instance_count          = 2
# vpc_id         = "vpc-12345678"
# subnet_ids     = ["subnet-12345678", "subnet-87654321"]
# tags = {
#     Name        = "example-instance"
#     Environment = "production"
# }