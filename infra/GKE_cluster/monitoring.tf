module "prometheus_stack" {
  source                   = "./modules/prometheus_stack"
  namespace                  = kubernetes_namespace.monitoring.metadata[0].name
  prometheus_stack_namespace = "monitoring"
  grafana_password           = var.grafana_password

  depends_on = [
    google_container_cluster.apps,
    google_container_node_pool.apps,
    kubernetes_namespace.monitoring,
  ]
}

module "falco" {
  count  = var.falco_enabled ? 1 : 0
  source = "./modules/falco"

  falco_chart_version = var.falco_version
  falco_namespace     = kubernetes_namespace.falco.metadata.0.name
  falco_slack_webhook = var.falco_webhookurl
}