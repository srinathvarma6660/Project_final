resource "azurerm_linux_virtual_machine" "worker-vm" {
  name                = "worker-vm"
  resource_group_name =var.resource_group_name
  location            =var.location
  size                = "Standard_DS1_v2"
  admin_username      = "ubuntu"
  network_interface_ids = [
    azurerm_network_interface.worker-nw-interface.id,
  ]


  admin_ssh_key {
    username   = "ubuntu"
    #public_key = file("~/.ssh/id_rsa.pub")
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC9a7RmDaSx4Z65d6dnqE/NxPtSi+JkU8ZGXmdFQmwYMTp380VbAxyIEqH13smrhLaEuSexKzdJnbGv+n4lqOIjor3bf9sppzIpA/rkCBrnQDsdaE6d0ufjgEu0vg46cYMP4efHS17GSob70X5VmFXujOmhcE6/kQrCFg6V9pwxQZ13HFTZsam+Qb2Hg2PR5zLQ/54muwh0hsmahFH0DCVBmGoHpsxbpftS9t3YtWspm8WszzLrkfE+VRXSdM1W9eLF33LfRCam+1iL8gJ48/qR/Iz5NsntuGf6sfSoVszWxBX8IA2Yyk2okLE8iEqoZh8I7n3GT938hMMplIwrIxolpjevkgEwuqCNge6G4pg8hzMWn/Lrub//Yc7M/cH8MJ35hx21XU0nBJaCb9TaQQo4O/QpjoGJlXnYyCNKhJTgfuTNK5X/WCaL8Wnm82EYw3FrAx1TaBzW5Mjxf+6SFjom8ccU5eREGERK8RDITbF1JxnC/5qe7iXQWKEnlqVUoR0= azureuser@practicejenkins"


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
