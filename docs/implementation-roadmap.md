# ORBIT implementation roadmap

## Phase 1 – Foundation
- Configure AWS budget alerts.
- Install AWS CLI, Terraform and kubectl.
- Bootstrap remote Terraform state.
- Provision VPC, EKS and a small managed node group.
- Verify cluster access and nodes.

## Phase 2 – First workload
- Select one small FastAPI application.
- Add Dockerfile and health endpoint.
- Build and test locally.
- Push image to ECR.
- Deploy using Kubernetes Deployment and Service.

## Phase 3 – CI
- GitHub Actions runs tests, builds and scans the image.
- Push an immutable commit-SHA image tag to ECR.
- Prefer GitHub OIDC over long-lived AWS access keys.

## Phase 4 – GitOps
- Install Argo CD.
- Create GitOps repository and Argo CD Application.
- Update image tag through CI and verify synchronization.

## Phase 5 – Reusable projects
- Validate project manifests against the JSON schema.
- Support multiple services and namespaces.
- Generate/package resources with Helm.
- Add ingress, configuration and secret references.

## Phase 6 – Scaling and reliability
- Configure resource requests/limits and HPA.
- Add Karpenter or Cluster Autoscaler.
- Test Pod failure, node capacity shortage and rollout rollback.

## Phase 7 – Observability and security
- Install Prometheus, Grafana and Loki.
- Add Trivy scanning and Kyverno policies.
- Add RBAC, NetworkPolicies and secrets integration.

## Phase 8 – Evidence and documentation
- Architecture diagrams.
- CI/CD evidence.
- Scaling and failure/recovery test results.
- Cost notes and teardown instructions.

Build and verify one end-to-end path before adding advanced features.
