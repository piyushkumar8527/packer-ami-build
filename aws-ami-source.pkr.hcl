data "amazon-ami" "ubuntu" {
  filters = {
    virtualization-type = "hvm"
    name                = "*ubuntu*"
    root-device-type    = "ebs"
  }
  owners      = ["099720109477"]
  most_recent = true
  region      = var.region
}

source "amazon-ebs" "ubuntu" {
  ami_name      = var.golden_ami_name
  instance_type = var.instance_type
  region        = var.region
  source_ami    = data.amazon-ami.ubuntu.id

  ssh_interface        = "session_manager"
  ssh_username         = "ubuntu"
  user_data_file       = "./scripts/ssm-agent.sh"
  communicator         = "ssh"
  iam_instance_profile = var.iam_instance_profile

  # Below will add the required tag in final AMI
  tags = {
    OS_Version    = "Ubuntu"
    Release       = "Latest"
    Role          = "Golden-AMI"
    Base_AMI_Name = "{{ .SourceAMIName }}"
    Extra         = "{{ .SourceAMITags.TagName }}"
  }
}