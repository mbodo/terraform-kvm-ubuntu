variable "name" {
  default     = "cluster"
  description = "The libvirt_pool name"
  type        = string
}

variable "path" {
  default     = "/mnt/data/kvm"
  description = "The libvirt_pool path"
  type        = string
}