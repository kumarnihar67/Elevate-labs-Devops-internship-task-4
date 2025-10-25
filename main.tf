terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

# Pulling the nginx image

resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}

# Creating the container from the image

resource "docker_container" "nginx_container" {
  name  = "terraform-nginx"
  image = docker_image.nginx_image.name
  ports {
    internal = 80
    external = 8081
  }
}
