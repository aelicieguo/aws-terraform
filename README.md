AWS:
Setup VPC with UI

Create subnet with UI

Create IAM with UI, there are:
1. terraform user that runs all infrastructure deployment
2. k8s-admin users for all control planes
3. k8s-nodes users for all other kubernetes nodes

For cluster 2, NLB is deployed after all instances are running.

Terraform:
There are terraform workspaces:
$ terraform workspace new cluster1
$ terraform workspace new cluster2

To switch between the workspaces:
$ terraform workspace select <workspace_name>
