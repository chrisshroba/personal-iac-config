resource "digitalocean_domain" "shroba_io" {
   name = "shroba.io"
   ip_address = digitalocean_droplet.shrobaserver.ipv4_address
}

resource "digitalocean_record" "shroba_io_ns_1" {
  domain = digitalocean_domain.shroba_io.name
  type = "NS"
  name = "@"
  value = "ns1.digitalocean.com."
}

resource "digitalocean_record" "shroba_io_ns_2" {
  domain = digitalocean_domain.shroba_io.name
  type = "NS"
  name = "@"
  value = "ns2.digitalocean.com."
}

resource "digitalocean_record" "shroba_io_ns_3" {
  domain = digitalocean_domain.shroba_io.name
  type = "NS"
  name = "@"
  value = "ns3.digitalocean.com."
}

resource "digitalocean_record" "shroba_io_root_A_record" {
  domain = digitalocean_domain.shroba_io.name
  type = "A"
  name = "@"
  value = digitalocean_droplet.shrobaserver.ipv4_address
}

resource "digitalocean_record" "tinyhealthcheck_shroba_io_subdomain_A_record" {
  domain = digitalocean_domain.shroba_io.name
  type = "A"
  name = "tinyhealthcheck"
  value = digitalocean_droplet.shrobaserver.ipv4_address
}
