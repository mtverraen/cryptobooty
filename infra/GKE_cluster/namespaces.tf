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
resource "kubernetes_namespace" "nginx" {
  metadata {
    labels = {
      name = "nginx"
    }

    name = "nginx"
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "kubernetes_namespace" "guestbook" {
  metadata {
    labels = {
      name = "guestbook"
    }

    name = "guestbook"
  }

  lifecycle {
    prevent_destroy = true
  }
}