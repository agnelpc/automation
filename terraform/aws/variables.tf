variable "region" {
  default = "eu-north-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ssh_public_key_path" {
  default = "~/.ssh/agnel_key.pub"
}

variable "host_port" {
  default = 5001
}

variable "allowed_ssh_cidr" {
  default = "0.0.0.0/0"
}