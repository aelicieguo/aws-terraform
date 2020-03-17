### Provider
aws_region = "ap-southeast-1"
aws_profile = "default"

## Application Specification
environment = "cluster1"
application_name = "cluster1"

## Network Specification
vpc_id = "vpc-009efb32884b7f127"
vpc_cidr = "10.0.0.0/16"
az_list = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
subnet_cidr_list  = ["10.0.10.0/24", "10.0.20.0/24", "10.0.30.0/24"]
subnet_id_list = ["subnet-0aedbc0a75ae54198", "subnet-0984f95603ed22ece", "subnet-0bcaa7eaed9015cb7"]
key_name = "cluster-1"
ami = "ami-0ca13b3dabeb6c66d"

## Master Instance Specification
cp_count = 1
cp_instance_type = "t2.large"
cp_sg_ids = ["sg-0ab30c17b7beb5471"]
cp_root_vol_size = 20
cp_root_vol_type = "gp2"
cp_name = ["k8s-cluster1-cp1"]
cp_private_ip = ["10.0.10.100"]

## Worker Instance Specification
worker_count = 3
worker_instance_type = "t2.large"
worker_sg_ids = ["sg-0ab30c17b7beb5471"]
worker_root_vol_size = 20
worker_root_vol_type = "gp2"
worker_name = ["k8s-cluster1-worker1", "k8s-cluster1-worker2", "k8s-cluster1-worker3"]
worker_private_ip = ["10.0.10.200", "10.0.20.200", "10.0.30.200"]
