#variable instance_count {default = "1"}
variable virtual_machine_name { default = "jenkins-vm-creating" }
variable project_name { default = "terraform-123456" }
#variable network_output { default = "" }




provider "google" {
    credentials = "${file("C:/Users/ragha/Downloads/terraforn-sshkey/sshjsonkey.json")}"
    project     = "terraform-336010"
    region      = "us-central1"
    zone        = "us-central1-a"
}




# resource "google_compute_instance" "instancecompute" {
#     name = "${var.virtual_machine_name}"
#     zone = "${var.zone}"
#     project = "${var.project_name}"
#     machine_type = "${var.machine_type}"
#     boot_disk {
#         initialize_params {
#       image = "centos-cloud/centos-7"
#         }
#     }
#     network_interface {
#         network = google_compute_network.vpc.name
#         access_config {
#         }
#     }
# }

#  resource "google_compute_instance" "jenkins-vm-creating" {
#      name = "${var.virtual_machine_name}"
#  }


# output "my_console_output" {
#   value = google_compute_instance.jenkins-vm-creating.id
# } 


resource "google_compute_instance" "dev-vscode" {
    count=2

    name         = "devserver-${count.index}"
    machine_type = "f1-micro"
    zone         = "us-central1-a"
    boot_disk {
        initialize_params {
        image = "centos-cloud/centos-7"
        }
    }
    network_interface {
        network = "${var.network_output_one}"
        access_config {
        }
    }
}