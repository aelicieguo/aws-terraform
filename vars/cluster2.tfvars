### Provider
aws_region = "ap-southeast-1"
aws_profile = "default"

## Application Specification
environment = "cluster2"
application_name = "cluster2"

## Network Specification
vpc_id = "vpc-009efb32884b7f127"
vpc_cidr = "10.0.0.0/16"
az_list = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
subnet_cidr_list  = ["10.0.50.0/24", "10.0.60.0/24", "10.0.70.0/24"]
subnet_id_list = ["subnet-0cf11f9b2edc359ad", "subnet-05285d045b1b8ec8b", "subnet-01b70719b84a0f9e0"]
key_name = "cluster-1"
ami = "ami-0ca13b3dabeb6c66d"

## Master Instance Specification
cp_count = 3
cp_instance_type = "t2.large"
cp_sg_ids = ["sg-0ab30c17b7beb5471"]
cp_root_vol_size = 20
cp_root_vol_type = "gp2"
cp_name = ["k8s-cluster2-cp1", "k8s-cluster2-cp2", "k8s-cluster2-cp3"]
cp_private_ip = ["10.0.50.100", "10.0.60.100", "10.0.70.100"]

## Worker Instance Specification
worker_count = 1
worker_instance_type = "t2.large"
worker_sg_ids = ["sg-0ab30c17b7beb5471"]
worker_root_vol_size = 20
worker_root_vol_type = "gp2"
worker_name = ["k8s-cluster2-worker1"]
worker_private_ip = ["10.0.50.200"]
