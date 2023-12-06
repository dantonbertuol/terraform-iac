variable "number_of_instances" {
    description = "Número de instâncias EC2."
    type = number
    default     = 3
}

variable "instance_type" {
    description = "Tipo de instância EC2."
    default     = "t2.micro"
}

variable "create_instance" {
    description = "Flag para criar ou não a instância"
    type        = bool
    default     = true
}
