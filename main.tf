provider "docker" {
}


resource "local_file" "batch4file" {
  filename = "/home/ubuntu/terraform-learn/demo.txt"
  content  = "This is a file created with TeeraForm"
}

resource "docker_image" "nginx" {
	name = "nginx:latest"
	keep_locally = false
}

resource "docker_container" "nginx-ctr" {
	name = "my-nginx-container"
	image = docker_image.nginx.name

	ports {
	internal = 80
	external = 80
	}
}
