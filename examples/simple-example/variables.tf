variable "do_token" {
  type    = string
  default = "dop_v1_43d2bb56d56bdde30f08b43f7e8394fa9f300563bb992f41860c838f64013a13"
}

variable "region" {
  type    = string
  default = "nyc1"
}

variable "wp_vm_count" {
  type        = number
  default     = 2
  description = "Número de máquinas para wordpress"
  validation {
    condition     = var.wp_vm_count > 1
    error_message = "O número mínimo de máquinas é 2"
  }
}