provider "google" {
project = "my-first-project-331921"
credentials = "${file("credentials.json")}"

region = "us-central1"
zone = "us-central1-c"
}

resource "google_compute_instance" "my_instance" {
    name = "terraform-instance"
    machine_type = "f1-micro"
    zone = "us-central1-a"
    allow_stopping_for_update = true

boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }

}
network_interface {
    network = "default"
    access_config{
        //neccessary even empty
    }

}





}


