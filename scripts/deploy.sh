#!/bin/bash
set -e

# Apply Terraform changes
cd infrastructure/terraform
terraform init
terraform apply -auto-approve

# Run Ansible playbook
cd ../ansible
ansible-playbook -i inventory playbook.yml

# Deploy to Kubernetes
cd ../kubernetes
kubectl apply -f deployment.yaml
