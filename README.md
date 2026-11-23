# ORBIT – Enterprise Cloud-Native Kubernetes Platform

A reusable AWS EKS platform for deploying applications with different architectures
and service counts. This is a starter structure, not a production-ready deployment.

## Workflow
1. Terraform provisions AWS networking, EKS, ECR and IAM.
2. An application repository defines its workloads in `orbit.yaml`.
3. GitHub Actions tests, builds, scans and pushes immutable Docker images to ECR.
4. CI updates the GitOps repository.
5. Argo CD synchronizes desired state into EKS.
6. Kubernetes Deployments, Pods and Services run the application.
7. HPA scales Pods; Karpenter or Cluster Autoscaler can add worker nodes.
8. Prometheus, Grafana and Loki provide observability.

## Main directories
- `infrastructure/terraform/` – AWS infrastructure as code.
- `platform/` – project manifest schema and reusable platform tooling.
- `examples/` – examples for monolith, microservices and frontend/backend apps.
- `gitops/` – Argo CD definitions.
- `observability/` – monitoring and logging configuration.
- `security/` – security tooling and policy examples.
- `docs/` – architecture and implementation roadmap.

## Design principles
- One EKS cluster can host multiple projects, organized with namespaces.
- Projects can have different numbers and types of workloads.
- Each independently deployed workload normally has its own Deployment and Service.
- A Pod may contain one or more containers.
- Kubernetes Services provide stable DNS names; applications should not hard-code Pod IPs.
- Namespaces are logical separation, not a complete security boundary. Add RBAC,
  NetworkPolicies, quotas and least-privilege IAM.
- Start with one small end-to-end deployment before adding advanced features.

See `docs/architecture/overview.md` and `docs/implementation-roadmap.md`.
