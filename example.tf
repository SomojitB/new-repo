resource "google_compute_instance" "default" {
  name         = "compute-instance-test"
  machine_type = "e2-medium"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
    disk_encryption_key_raw=filebase64("/tmp/key.json")
  }
  shielded_instance_config {
    enable_secure_boot = true
    enable_vtpm=true
    enable_integrity_monitoring = true
  }
  network_interface {
    network = "default"
    access_config {

    }
  }
  service_
  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    email = "suchetakar4@gmail.com"
  }
}
