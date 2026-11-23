# GitOps

Store Argo CD Applications and environment-specific release definitions here.
Argo CD watches this repository and reconciles desired state into EKS.
Use immutable image tags such as Git commit SHAs rather than `latest`.
