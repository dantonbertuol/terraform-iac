module "ec2_instances" {
  
  source = "./modules/ec2-instances"

  instance_count = 2
  ami_id         = "ami-0a0d9cf81c479446a"
  instance_type  = "t2.micro"
  subnet_id      = "subnet-04360431acacb3c75"
}

module "s3_bucket" {

  source = "./modules/s3-bucket"

  bucket_name = "djb-exclusive-bucket-123"
  tags        = {"Danton" = "Bertuol"}
}
