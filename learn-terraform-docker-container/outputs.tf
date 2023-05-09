output "container_id" {
    description = "The ID of the Docker container we created"
    value = docker_container.nginx.id
}

output "image_id" {
    description = "The ID of the Docker image we created"
    value = docker_image.nginx.image_id
}

