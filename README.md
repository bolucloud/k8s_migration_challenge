# Module

The `state-metrics` K8s service deployment manifest has been converted into a module found at "modules/state-metrics".

The k8s resources were imported into state using the following commands
- terraform import kubernetes_namespace.mon_local mon
- terraform import kubernetes_deployment.state_metrics_local mon/state-metrics
- terraform import kubernetes_service_account.state_metrics_local mon/state-metrics
- terraform import kubernetes_cluster_role.state_metrics_local state-metrics
- terraform import kubernetes_cluster_role_binding.state_metrics_local state-metrics-binding

Input variables to create the `state-metrics` service are defined in [a relative link](main.tf) 


# Challenge

Unable to prevent recreation of new pod after conversion to module. Expected a **no-diff** plan after importing resources into state, however the terraform plan always intends to destroy old resources, and create new resources using the module as seen here :arrow_right: [a relative link](tfplan-output-post-import.txt).


