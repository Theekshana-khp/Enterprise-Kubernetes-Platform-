# Security

Planned controls:
- Trivy image and filesystem scanning in CI.
- Kyverno admission policies.
- Kubernetes RBAC and namespace-scoped permissions.
- NetworkPolicies for service-to-service restrictions.
- AWS IAM least privilege, EKS Pod Identity or IRSA.
- Secrets Manager with an appropriate secrets integration.

Never store secrets in Git or plain project manifests.
