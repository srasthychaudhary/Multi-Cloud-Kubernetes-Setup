provider "google" {
  project     = "lw-summer"
  region      = "us-central1-a"
  credentials = "lw-summer-2f41aeda851f.json"
}

resource "google_compute_instance" "os1" {
  name         = "googlekubeworker1"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  labels = {
   env = "googleworker1"
}

  boot_disk {
    initialize_params {
      image = "rhel-cloud/rhel-8"
    }
  }
network_interface {
    network = "default"
    access_config {
      
    }
}
}
