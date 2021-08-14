resource "kubernetes_namespace" "monitoring" {
  metadata {
    labels = {
      name = "monitoring"
    }

    name = "monitoring"
  }
  lifecycle {
    prevent_destroy = true
  }
}
resource "kubernetes_namespace" "falco" {
  metadata {
    labels = {
      name = "falco"
    }

    name = "falco"
  }

  lifecycle {
    prevent_destroy = true
  }
}