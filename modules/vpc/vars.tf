variable "zone" { 
   type = string 
   default = "us-central1-a" 
} 

variable "region" {
   type = string
   default = "us-central1" 
} 
variable "image" {
   default = "" 
} 

variable "machine_type" { 
   default = "g1-small" 
}
 
variable labels { 
   default = {} 
}

variable "network_output_one" {
   type = string
   default = "old-vpc" 
} 


variable "instance_count" {
   type = number
   default = 1
}