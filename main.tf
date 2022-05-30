provider "kubernetes" {
  alias       = "local"
  config_path = pathexpand("~/.kube/config")
}

module "state-metrics" {
  source                         = "./modules/state-metrics"
  name                           = "state-metrics"
  namespace                      = "mon"
  app                            = "state-metrics"
  label_app                      = "app"
  label_deploy_env               = "deploy_env"
  deployment_replicas            = 1
  container_readiness_probe_path = "/healthz"
  container_readiness_probe_port = "18080"
}
