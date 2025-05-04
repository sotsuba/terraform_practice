variable "name" {
    description = "The name to use for all the resources created by this module"
    type        = string
}

variable "image" {
    description = "The Docker image to run"
    type        = string
}

variable "container_port" {
    description = "The port the Docker image listens on"
    type        = number
}

variable "environment_variables" {
    description = "Environment variables to set for the app"
    type        = map(string)
    default     = {}
}

variable "replicas" {
    description = "The number of replicated pods in a Node of Kubernetes"
    type        = number
    default     = 1
}