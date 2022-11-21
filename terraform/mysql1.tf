resource "libvirt_volume" "mysql1" {
  name   = "mysql1.qcow2"
  pool   = libvirt_pool.dev-ssd.name
  source = "http://192.168.11.1:4567/debian11cloud.qcow2"
  format = "qcow2"
}

resource "libvirt_domain" "mysql1" {
  name   = "mysql1"
  memory = "2048"
  vcpu   = 2

  network_interface {
    network_name = libvirt_network.dev.name
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }

  disk {
    volume_id = libvirt_volume.mysql1.id
  }
}
