terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "~> 3.0"
        }
    }
    required_version = ">= 1.0.0"
}

provider "docker" {}

resource "docker_image" "castle_image" {
    name = "castle:tf"

    build {
        context = "../"
        dockerfile = "../Dockerfile"
    }
}

resource "docker_container" "castle_container" {
    name = "castle-tf"
    image = docker_image.castle_image.name
    ports {
        internal = 8080
        external = 8080
    }

    restart = "unless-stopped"
}