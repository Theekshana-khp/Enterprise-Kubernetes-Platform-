# Platform layer

The platform consumes a project manifest, validates it against the JSON schema,
then renders Helm values or Kubernetes manifests. Application business logic stays
in each application's own repository.
