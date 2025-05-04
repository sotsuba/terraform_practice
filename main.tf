resource "google_compute_instance" "example" {
    name         = "name-instance"
    machine_type = "e2-medium"
    zone         = "${var.region}-b"

    boot_disk {
        initialize_params {
            image = "debian-10-buster-v20201014"
        }
    }

    network_interface {
        network = "default"
    }
}

