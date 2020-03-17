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

Kubernetes:
Once CP1 is up, these commands are executed:
$ mkdir -p $HOME/.kube
$ sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
$ sudo chown $(id -u):$(id -g) $HOME/.kube/config

Remaining nodes are joined to the first node.

Once all nodes are joined, they are NotReady, because absence of CNI

$ kubectl apply -f https://docs.projectcalico.org/v3.9/manifests/calico.yaml
