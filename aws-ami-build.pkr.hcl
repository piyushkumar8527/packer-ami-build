build {
  sources = [
    "source.amazon-ebs.ubuntu"
  ]

  provisioner "file" {
    destination = "/tmp/"
    source      = "./scripts/build-ami.sh"
  }

  provisioner "shell" {
    inline = [
      "cd /tmp",
      "chmod +x build-ami.sh",
      "./build-ami.sh"
    ]
  }
}
