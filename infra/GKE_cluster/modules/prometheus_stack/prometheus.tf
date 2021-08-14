data "template_file" "prometheus" {
  template = file("${path.module}/prometheus.yaml")
}

resource "helm_release" "prometheus_stack" {

  name       = var.release_name
  namespace  = var.namespace
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  version    = var.prometheus_stack_version

  values = [
    data.template_file.prometheus.rendered
  ]

  set {
    name  = "grafana.adminPassword"
    value = var.grafana_password
  }
}
