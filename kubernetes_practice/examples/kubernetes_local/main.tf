module "simple_webapp" {
    source = "../../modules/services/k8s-app"

    name            = "simple-webapp"
    image           = "sotsuba/simple_webapp"
    replicas        = 2
    container_port  = 5000
}

provider "kubernetes" {
    config_path     = "~/.kube/config"
    config_context  = "docker"
}
