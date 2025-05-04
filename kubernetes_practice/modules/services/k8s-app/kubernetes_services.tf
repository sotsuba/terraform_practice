resource "kubernetes_service" "app" {
    metadata {
        name = var.name
    }

    spec {
        type = "LoadBalancer"
        port {
            port        = 80
            target_port = var.container_port
            protocol    = "TCP"
        }

        selector = local.pod_labels
    }
}