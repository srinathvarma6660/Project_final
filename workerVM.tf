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
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC9B8DK7GnqeP41HoHniJUGxl03dYiveQOeCB8vjFcDTtpICVV6YutEOzB6MeKLl2kW8EvimK3MNr/wadyz8xadGxWcf9pTKCAyLzhggf5MfIGoR+wzLBoKVJ3vbwAV9+of7EGo3R0jg00dRLlm2aaCQROeVCfUBqjKwAQZIXU/d7e0KKITyzErcxbqOrHzSp0Cpt5wjwx6M4QolN1IETmqvPi3DtblHGeGtBIsP+xS3aCOC26nKyHllyk3sGSan8gHazrMi2TNs/K7yczyXiRIGrv6dJZYLtqkkM9ywttmBC5V5fg8ucA9kEg3ABDH5C0EJQ95SLNvV5FYmFUc+43jnPDRMLd6Qk3E7xlqkFnj866+hOUj6a148YzQy88/3R8b7YsswwkyDucIPGv85rh2kXzy/gHG01eaDrTKreouEh8CaLIx31aIW2r5Obo13LIH2NaR6WC3tMCKjD31iaXxK8/XybcKcfhptaL1MjikVVpKrzc5jUUTMdnmnGhLJB8= azureuser@jenkinspocproject"

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
