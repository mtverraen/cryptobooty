resource "helm_release" "falco" {
  name       = "falco"
  repository = "https://falcosecurity.github.io/charts"
  chart      = "falco"

  namespace = var.falco_namespace
  version   = var.falco_chart_version

  values = [
    templatefile("${path.module}/falco.yaml", {
      slack_webhook = var.falco_slack_webhook
    }),
  ]
}