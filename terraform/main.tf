terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
}

provider "libvirt" {
  uri = "qemu+ssh://root@192.168.11.1/system?keyfile=/home/guwum/.ssh/nt&sshauth=privkey"
#  uri = "qemu+ssh://root@192.168.11.1/system"
}
