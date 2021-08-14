terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {
    default="da7d5eb58c8353c45908a72e2ba9d44bf13ae3c6eb8b5a679ecc1c00dfa667c3"
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

# Create a web server
resource "digitalocean_droplet" "web" {
  image = "ubuntu-20-04-x64"
  name="www-1"
  region="lon1"
  size="s-1vcpu-1gb"


  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      # install nginx
      "sudo apt update",
      "sudo apt install -y nginx"
    ]
  }
}