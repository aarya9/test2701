provider "google" {
    credentials = "${file("C:/Users/ragha/Downloads/terraforn-sshkey/sshjsonkey.json")}"
    project     = "terraform-336010"
    region      = "us-central1"
    zone        = "us-central1-a"
}
module "vpc"{
    source="../modules/vpc"
    # vpcname="${module.my_vpc.network_output}"
    #vpcname=google_compute_network.old-vpc
    #network_output=["${module.my_vpc.network_output}"]
    #network_output=module.vpc.network_output
}

module "instances"{
    source="../modules/instances"
    network_output_one="${module.vpc.network_output}"
}