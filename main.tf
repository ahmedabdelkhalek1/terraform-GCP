provider "google"{
  credentials = file("C:\\binaries\\terraform-key.json")
  project     = "friendly-brand-441407-b4"
  region      = "us-central1"
}

resource "google_compute_instance" "vm_instance" {
  name         = "example-vm-test-terraform"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
