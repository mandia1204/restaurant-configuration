ansible-playbook main.yml
ansible-playbook main.yml --tags "vpc-subnets"
ansible-playbook main.yml --tags "eks-cluster"
ansible-playbook main.yml --tags "eks-worker-nodes"

aws eks --region us-east-2 update-kubeconfig --name mandia-eks-cluster

we should run kubectl apply -f aws-auth-cm.yaml after the worker nodes are created to join the cluster