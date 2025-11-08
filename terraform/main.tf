terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "flask" {
  name = "local_flask_app:latest"
  build {
    context    = "../app"
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "flask_container" {
  name  = "local_flask_container"
  image = docker_image.flask.image_id
  ports {
    internal = 5000
    external = 5001
  }
}
