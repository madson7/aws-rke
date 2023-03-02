variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default = "10.45.0.0/16"
}

variable "subnet_public_cidr_block" {
  description = "CIDR block for the subnet"
  default = "10.45.1.0/24"
}

variable "subnet_private_cidr_block" {
  description = "CIDR block for the subnet"
  default = "10.45.2.0/24"
}



variable "ami" {
  description = "Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2023-02-08"
  default = "ami-0557a15b87f6559cf"
}

variable "instance_type_master" {
  description = "Instance type master"
  default = "t2.xlarge"
}

variable "instance_type_worker" {
  description = "Instance type worker"
  default = "t2.xlarge"
}

variable "count_master" {
  description = "Quantidade de node master"
  default = 3
}

variable "count_worker" {
  description = "Quantidade de node worker"
  default = 2
}

variable "key_name" {
  description = "key name"
  default = "key-infra"
}
