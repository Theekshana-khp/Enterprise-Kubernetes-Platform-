# Terraform infrastructure

Recommended order:
1. Bootstrap an S3 state bucket with versioning, encryption and public-access block.
2. Configure remote state and locking.
3. Create VPC, public/private subnets, routing and a cost-aware NAT strategy.
4. Create EKS and a managed node group.
5. Create ECR repositories and least-privilege IAM access.
6. Add cluster add-ons and node autoscaling after validating the base cluster.

Do not commit state files, plan files, credentials or `terraform.tfvars`.
