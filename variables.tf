### Provider
variable "aws_region" {
  description = "The region to deploy the kubernetes cluster"
  default=""
}
variable "aws_profile" {
  description = "IAM Profile name for AWS"
  default=""
}

### Application Specification
variable "environment" {
  description = "The Environment of the Kubernetes cluster"
  default     = ""
}

variable "application_name" {
  description = "The Application Name of the Kubernetes cluster"
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

## Network Specification
variable "vpc_id" {
  description = "The vpc id for the Kubernetes cluster"
  default     = ""
}

variable "vpc_cidr" {
  description = "The CIDR Range for the Kubernetes cluster vpc"
  default     = ""
}

variable "az_list" {
  description = "The AZ of the Kubernetes cluster will be placed in"
  default     = []
}

variable "subnet_cidr_list" {
  description = "The CIDR list of the Kubernetes nodes will be placed in"
  default     = []
}

variable "subnet_id_list" {
  description = "The subnet_id list of the Kubernetes nodes will be placed in"
  default     = []
}

### Generic Specifications
variable "ami" {
  description = "The AMI ID for the image to be used"
  default = ""
}

variable "key_name" {
  description = "The key-pair for the Kubernetes Cluster to be deployed"
  default = ""
}

### Masters Specifications
variable "cp_count" {
  description = "The number of control planes for the Kubernetes cluster"
  default = ""
}

variable "cp_instance_type" {
  description = "The instance type for the Kubernetes cluster contorl plane"
  default = ""
}

variable "cp_sg_ids" {
  description = "The SG used for all control planes of the Kubernetes Cluster to be deployed"
  default = ""
}

variable "cp_root_vol_size" {
  description = "The root volume size of all control planes of the Kubernetes Cluster to be deployed"
  default = ""
}

variable "cp_root_vol_type" {
  description = "The root volume type of all control planes of the Kubernetes Cluster to be deployed"
  default = ""
}

variable "cp_name" {
  description = "The name for control plane 1 of the Kubernetes Cluster"
  default = []
}

variable "cp_private_ip" {
  description = "The private ip of the control plane 1 of the Kubernetes Cluster to be deployed"
  default = []
}

### Workers Specifications
variable "worker_count" {
  description = "The number of worker nodes for the Kubernetes cluster"
  default = ""
}

variable "worker_instance_type" {
  description = "The instance type for the Kubernetes cluster worker node"
  default = ""
}

variable "worker_sg_ids" {
  description = "The SG used for all worker nodes of the Kubernetes Cluster to be deployed"
  default = ""
}

variable "worker_root_vol_size" {
  description = "The root volume size of all worker nodes of the Kubernetes Cluster to be deployed"
  default = ""
}

variable "worker_root_vol_type" {
  description = "The root volume type of all worker nodes of the Kubernetes Cluster to be deployed"
  default = ""
}

variable "worker_name" {
  description = "The name for all worker nodes of the Kubernetes Cluster"
  default = []
}

variable "worker_private_ip" {
  description = "The private ip of all worker nodes of the Kubernetes Cluster to be deployed"
  default = []
}
