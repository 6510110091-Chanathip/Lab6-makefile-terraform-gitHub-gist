resource "google_compute_instance" "terraform" {
  project      = "astute-task-405802"
  name         = "terraform"
  machine_type = "e2-medium"
  zone         = "asia-southeast1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}