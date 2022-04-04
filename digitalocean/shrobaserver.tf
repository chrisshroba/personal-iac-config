resource "digitalocean_droplet" "shrobaserver" {
  image = "72067660"
  /* image = "ubuntu-20-04-x64" */
  name = "shrobaserver"
  region = "nyc1"
  size = "s-1vcpu-1gb"
  backups = true
  monitoring = true
  ipv6 = true
  ssh_keys = [
    /* data.digitalocean_ssh_key.MacBook2021.id */
  ]

  connection {
    host = self.ipv4_address
    user = "root"
    type = "ssh"
    private_key = file(var.pvt_key)
    timeout = "2m"
  }
}
