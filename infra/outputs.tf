output "image_id" {
  description = "The built docker image id"
  value       = docker_image.castle_image.image_id
}

output "container_id" {
  description = "The docker container id"
  value       = docker_container.castle_container.id
}

output "container_ports" {
  description = "Mapped ports (host:container)"
  value       = docker_container.castle_container.ports
}