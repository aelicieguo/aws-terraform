# Configure the AWS Provider
provider "aws" {
  region                  = "${var.aws_region}"
  profile                 = "${var.aws_profile}"
}

resource "aws_network_interface" "cp" {
  subnet_id   = "${element(var.subnet_id_list, count.index)}"
  private_ips = ["${element(var.cp_private_ip, count.index)}"]

  count = "${var.cp_count}"

  tags = {
    Name = "cp_primary_network_interface"
  }
}

resource "aws_network_interface" "worker" {
  subnet_id   = "${element(var.subnet_id_list, count.index)}"
  private_ips = ["${element(var.worker_private_ip, count.index)}"]

  count = "${var.worker_count}"

  tags = {
    Name = "worker_primary_network_interface"
  }
}

resource "aws_instance" "cp" {
  ami           = "${var.ami}"
  instance_type = "${var.cp_instance_type}"
  availability_zone = "${element(var.az_list, count.index)}"
  iam_instance_profile = "k8s-admin"
  key_name = "${var.key_name}"
  root_block_device {
    volume_type = "${var.cp_root_vol_type}"
    volume_size = "${var.cp_root_vol_size}"
}

  network_interface {
    network_interface_id = aws_network_interface.cp[count.index].id
    device_index         = 0
  }
  
  count = "${var.cp_count}"

  tags = {
    "kubernetes.io/cluster/cluster2" = "owned"
    Name = "${element(var.cp_name, count.index)}"
  }
}

resource "aws_instance" "worker" {
  ami = "${var.ami}"
  instance_type = "${var.worker_instance_type}"
  availability_zone = "${element(var.az_list, count.index)}"
  iam_instance_profile = "k8s-nodes"
  key_name = "${var.key_name}"
  root_block_device {
    volume_type = "${var.worker_root_vol_type}"
    volume_size = "${var.worker_root_vol_size}"
}

  network_interface {
    network_interface_id = aws_network_interface.worker[count.index].id
    device_index         = 0
  }
  
  count = "${var.worker_count}"

  tags = {
    "kubernetes.io/cluster/cluster2" = "owned"
    Name = "${element(var.worker_name, count.index)}"
  }
}
