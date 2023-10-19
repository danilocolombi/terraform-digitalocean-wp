terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~>2.0.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

module "wp_stack" {
  source  = "danilocolombi/wp/digitalocean"
  version = "1.1.1"
  region = var.region
  vms_ssh = digitalocean_ssh_key.ssh.fingerprint
  wp_vm_count = var.wp_vm_count
}

resource "digitalocean_ssh_key" "ssh" {
  name       = "Home computer"
  public_key = file("~/.ssh/id_rsa.pub")
}