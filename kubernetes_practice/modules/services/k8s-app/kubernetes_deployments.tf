resource "kubernetes_deployment" "app" {
    metadata {
        name = var.name
    }

    spec {
        replicas = var.replicas

        template {
            metadata {
                labels = local.pod_labels
            }

            spec {
                container {
                    name  = var.name
                    image = var.image

                    port {
                        container_port = var.container_port
                    }

                    dynamic "env" {
                        for_each = var.environment_variables
                        content {
                            name  = env.key
                            value = env.value
                        }
                    }
                }
                
            }
            
        }
        
        selector {
            match_labels = local.pod_labels
        }
    }
}