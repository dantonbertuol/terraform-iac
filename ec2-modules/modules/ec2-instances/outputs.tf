output "instance_ids" {
  value = aws_instance.djb_instance.*.id
}
