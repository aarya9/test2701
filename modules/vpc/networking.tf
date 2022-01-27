
variable virtual_machine_name { default = "jenkins-vm-creating" }
variable project_name { default = "terraform-123456" }
variable vpcname {default = "old-vpc"}
#variable network_output { default = "" }


provider "google" {
    credentials = "${file("C:/Users/ragha/Downloads/terraforn-sshkey/sshjsonkey.json")}"
    project     = "terraform-336010"
    region      = "us-central1"
    zone        = "us-central1-a"
}


#  resource "google_compute_network" "old-vpc" {
#         description                     = "created for jenkins testing"
#         #id                              = "projects/terraform-336010/global/networks/old-vpc"
#         mtu                             = "1460"
#         name                            = "old-vpc"
#         project                         = "terraform-336010"
#         routing_mode                    = "REGIONAL"
#         #self_link                       = "https://www.googleapis.com/compute/v1/projects/terraform-336010/global/networks/old-vpc"
#         timeouts {}
#     }

# output "network_output" {
#   value = google_compute_network.old-vpc.name
# } 

data  "google_compute_network" "old-vpc" {
        # description                     = "created for jenkins testing"
        #id                              = "projects/terraform-336010/global/networks/old-vpc"
        # mtu                             = "1460"
        name                            = "old-vpc"
        project                         = "terraform-336010"
        # routing_mode                    = "REGIONAL"
        #self_link                       = "https://www.googleapis.com/compute/v1/projects/terraform-336010/global/networks/old-vpc"
        # timeouts {}
    }

output "network_output" {
  value = data.google_compute_network.old-vpc.name
} 