
variable "packer_resource_group" {
  description = "Name of the resource group for the packer image"
  default     =  "project1-packer-rg"
  type        = string
}

variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default     = "project1"
  type        = string
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "Germany West Central"
}

variable "username" {
  description = "The login of the virtual machines."
  default     = "ether"
  type        = string
}

variable "password" {
  description = "The password of the virtual machines."
  default     = "Th151545tr0ngP455word"
  type        = string
}

variable "nb_vms" {
  description = "The nb of VM to create."
  default     = 3
  type        = number
}
