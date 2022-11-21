resource "libvirt_network" "dev" {
  name = "dev"
  mode = "nat"
  autostart = "true"
  domain = "rpulse.dev"
  addresses = ["192.168.13.0/24"]
  dhcp {
    enabled = true
  }
  dns {
        enabled = true
  }
}

resource "libvirt_pool" "dev-ssd" {
  name = "dev-ssd"
  type = "dir"
  path = "/data/kvm/dev"
}