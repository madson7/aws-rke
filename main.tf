module "vpc_and_subnet" {
  source = "git::https://github.com/madson7/terraform-modules//modules/vpc_and_subnet_aws?ref=main"
  vpc_cidr_block = var.vpc_cidr_block
  subnet_public_cidr_block = var.subnet_public_cidr_block
  subnet_private_cidr_block = var.subnet_private_cidr_block
}

data "template_file" "script_admin" {
  template = "${file("${path.root}/template/script_admin.tpl")}"
  vars = {
    MASTER_IPS = "${join("\n", aws_instance.master.*.private_ip)}"
    WORKER_IPS = "${join("\n", aws_instance.worker.*.private_ip)}"

  }
}
data "template_file" "script_cluster" {
  template = "${file("${path.root}/template/script_cluster.tpl")}"
}

resource "aws_security_group" "sg_public" {
  name = "sg_public"
  description = "Grupo de seguranca para acesso SSH e HTTPS"
  vpc_id = module.vpc_and_subnet.vpc_id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_security_group" "sg_private" {
  name = "sg_private"
  description = "Grupo de seguranca para acesso privado"
  vpc_id = module.vpc_and_subnet.vpc_id

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["10.45.0.0/16"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "master" {
  count = var.count_master
  ami = var.ami
  instance_type = var.instance_type_master
  subnet_id     = module.vpc_and_subnet.private_subnet_id
  vpc_security_group_ids = [aws_security_group.sg_private.id]
  key_name = var.key_name
  tags = {
    Name = "master-${count.index}"
  }

  user_data = <<EOF
#!/bin/bash
${data.template_file.script_cluster.rendered}
EOF
}

resource "aws_instance" "worker" {
  count = var.count_worker
  ami = var.ami
  instance_type = var.instance_type_worker
  subnet_id     = module.vpc_and_subnet.private_subnet_id
  vpc_security_group_ids = [aws_security_group.sg_private.id]
  key_name = var.key_name
  tags = {
    Name = "worker-${count.index}"
  }

  user_data = <<EOF
#!/bin/bash
${data.template_file.script_cluster.rendered}
EOF
}

resource "aws_eip" "ip_elastico" {
  vpc = true
}
resource "aws_eip_association" "eip_association" {
  instance_id   = aws_instance.admin.id
  allocation_id = aws_eip.ip_elastico.id
}
resource "aws_instance" "admin" {
  depends_on = [
    aws_instance.master,
    aws_instance.worker
  ]
  ami           = var.ami
  instance_type = "t2.micro"
  subnet_id     = module.vpc_and_subnet.public_subnet_id
  vpc_security_group_ids = [aws_security_group.sg_public.id]
  key_name = var.key_name
  tags = {
    Name = "admin"
  }

  user_data = <<EOF
#!/bin/bash
${data.template_file.script_admin.rendered}
EOF
}
