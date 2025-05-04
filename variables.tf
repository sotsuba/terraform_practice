variable "region" {
    description = "The GCP region where the source will be created"
    type        = string
    default     = "us-west4"
}

variable "project_id" {
    description = "The project ID for GCP"
    type        = string    
    default     = "sotsuba-mlops"
}

