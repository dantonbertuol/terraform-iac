output "instance_ids" {
  value = module.ec2_instances.instance_ids
}

output "bucket_id" {
  value = module.s3_bucket.bucket_id
}
