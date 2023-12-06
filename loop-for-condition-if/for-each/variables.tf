variable "web_servers" {
    description = "Configuração dos servidores web"
    type = map(object({
    name = string
    }))
    default = {
        "server1" = {
            name = "Server1"
        },
        "server2" = {
            name = "Server2"
        },
        "server3" = {
            name = "Server3"
        }
    }
}

variable "instance_type" {
    description = "Tipo de instância EC2."
    default     = "t2.micro"
}