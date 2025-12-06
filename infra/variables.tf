variable "image_name" {
  description = "Local image name"
  type        = string
  default     = "castle:tf"
}

variable "host_port" {
  description = "Host port to map to container"
  type        = number
  default     = 8080
}

variable "container_port" {
  description = "Container port the app listens on"
  type        = number
  default     = 8080
}