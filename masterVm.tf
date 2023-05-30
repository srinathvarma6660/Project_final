resource "azurerm_linux_virtual_machine" "example" {
  name                = "master-vm"
  resource_group_name =var.resource_group_name
  location            =var.location
  size                = "Standard_DS2_v2"
  admin_username      = "ubuntu"
  network_interface_ids = [
    azurerm_network_interface.master-nw-interface.id,
  ]


  admin_ssh_key {
    username   = "ubuntu"
    #public_key = file("~/.ssh/id_rsa.pub")
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzgUxXfZi352QnTJWwj2aO2Q4mSdsPkfUnqjIKdCKFDRebqbmYHC+SiiRGGMIwoKveWRDRe5zX9ov2Ywc0+Ty+nB6lGPeiXb9LtjGLN075FP9h/5uavDn36g9qlwr/PMPlBDHd4ifmOU4iqzo3RUlghTvR25qIWxJZOVOkRkJw0exLV/noLn4NsIUQec2/JH44PLYkpoEm7Dc6UeCz5aJlEm0CUXCKsaFRe3qInc/kXENbiitwc9QCBjgXxWQQk7h17axjAm9LIhPNdBE5JlpBrb/nFVXWE9psAOaouGzdSmjFWHQVO2phKOwskTePM6TISgHlKi/bIAJHrlq5ShBoug68kEt2dQR9s/HDiv9HZgrLsZ+0MhUUn7AS5xZT2AdQLYvPJXD7rsrWj1ko1B7BBJPCqxK0PiFsjrgxu6HX8A9qbdIcUurw03dWZ1P9+imL5Gh1Dd+AbRDLn3yHtXoKLEVesyXwJveAd3rYj2lHaH+fh91ckk/w9xoEm6bxsgU= azureuser@demojenkins"


  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
