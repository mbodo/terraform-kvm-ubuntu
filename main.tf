locals {
  path = join("/", [var.path, var.name])
}

provider "libvirt" {
  uri = "qemu:///system"
}

resource "libvirt_pool" "cluster" {
  name = var.name
  type = "dir"
  path = local.path

  xml {
    xslt = file("pool.xsl")
  }
}

//resource libvirt_volume kind {
//  name = "kind.qcow2"
//  pool = libvirt_pool.local.name
//  //source = "https://cloud.centos.org/centos/8-stream/x86_64/images/CentOS-Stream-GenericCloud-8-20220125.1.x86_64.qcow2"
//  source = "/mnt/data/CentOS-Stream-GenericCloud-8-20220125.1.x86_64.qcow2"
//  format = "qcow2"
//
//  xml {
//      xslt = file("volume.xsl")
//  }
//}
