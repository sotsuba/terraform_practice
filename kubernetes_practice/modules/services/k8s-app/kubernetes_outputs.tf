output "service_endpoint" {
    value = try (
        "https://${local.status[0]["load_balancer"][0]["ingress"][0]["hostname"]}",
        "(error parsing hostname for status)"
    )
    description = "The K8S Service endpoint"
}

output "deployment_name" {
    value = kubernetes_deployment.app.metadata[0].name
    description = "The name of the Kubernetes deployment"
}

output "service_name" {
    value = kubernetes_service.app.metadata[0].name
    description = "The name of the Kubernetes service"
}