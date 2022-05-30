variable "app" {
  description = "the label for the application being deployed to k8s"
  type        = string
  default     = "state-metrics"
}

variable "label_app" {
  description = "label being applied for the app"
  type        = string
  default     = "app"
}

variable "label_deploy_env" {
  description = "label being applied for the deployment environment"
  type        = string
  default     = "deploy_env"
}

variable "name" {
  description = "The name of the application being deployed to k8s"
  type        = string
  default     = "state-metrics"
}

variable "namespace" {
  description = "namespace used for deployment"
  type        = string
  default     = "mon"
}

variable "deployment_replicas" {
  description = "The number of replicas for app tod eploy"
  type        = number
  default     = 1
}

variable "deployment_spec_strategy" {
  description = "Type of deployment. Can be 'Recreate' or 'RollingUpdate'."
  type        = string
  default     = "Recreate"
}

variable "deployment_template_spec_enable_service_links" {
  description = "Enables generating environment variables for service discovery"
  type        = bool
  default     = false
}

variable "deployment_template_spec_automount_service_account_token" {
  description = "Indicates whether a service account token should be automatically mounted"
  type        = bool
  default     = true
}

variable "deployment_template_spec_host_network" {
  description = "Host networking requested for this pod. Use the host's network namespace."
  type        = bool
  default     = true
}

variable "deployment_template_spec_container_image" {
  description = "docker image name to pull"
  type        = string
  default     = "k8s.gcr.io/kube-state-metrics/kube-state-metrics:v1.9.8"
}


variable "deployment_template_spec_container_image_pull_policy" {
  description = "Image pull policy. Only 3 options -> Always, Never, IfNotPresent"
  type        = string
  default     = "IfNotPresent"
}

variable "deployment_template_spec_container_termination_message_path" {
  description = "Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message"
  type        = string
  default     = "/dev/termination-log"
}

variable "container_readiness_probe_path" {
  type    = string
  default = "/healthz"
}

variable "container_readiness_probe_port" {
  type    = string
  default = "18080"
}

variable "container_resources_requests_cpu" {
  type    = string
  default = "30m"
}

variable "container_resources_requests_memory" {
  type    = string
  default = "30Mi"
}

variable "container_resources_limits_cpu" {
  type    = string
  default = "60m"
}

variable "container_resources_limits_memory" {
  type    = string
  default = "50Mi"
}
