# ORBIT architecture overview

## Goal
A reusable AWS EKS platform for applications with different architectures and
different numbers of workloads.

## Responsibilities
- Application repository: source, tests, Dockerfiles and `orbit.yaml`.
- Terraform: AWS network, EKS, ECR and IAM.
- CI: test, build, scan and publish images.
- GitOps repository: desired Kubernetes/Helm release state.
- Argo CD: reconcile GitOps state into EKS.
- Kubernetes: schedule Pods, provide Services/DNS and maintain Deployments.
- HPA: scale Pods using metrics.
- Karpenter or Cluster Autoscaler: add/remove worker nodes as capacity changes.

## Networking
A Kubernetes Service gives a stable virtual IP and DNS name for matching Pods.
Within a namespace, call a service by its short name, e.g.
`http://course-service:8082`. Across namespaces, use a qualified name such as
`course-service.learning-platform.svc.cluster.local`.

Pod IPs are ephemeral. Use Service DNS instead of hard-coded Pod IPs.
NetworkPolicies and security settings determine which workloads may communicate.

## Multi-project hosting
Use a namespace per project as a starting organizational boundary. Add RBAC,
resource quotas, limit ranges, NetworkPolicies and per-workload IAM permissions.
Namespaces alone are not a hard security boundary.
