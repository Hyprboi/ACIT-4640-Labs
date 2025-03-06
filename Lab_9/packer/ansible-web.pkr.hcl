packer {
  required_plugins {

    ansible = {
      version = ">= 1.1.2"
      source  = "github.com/hashicorp/ansible"
    }
    amazon = {
      version = ">= 1.3"
      source  = "github.com/hashicorp/amazon"
    }
    # COMPLETE ME
    # add necessary plugins for ansible and aws
}
}
source "amazon-ebs" "ubuntu" {
  # COMPLETE ME
  # add configuration to use Ubuntu 24.04 image as source image
  ami_name      = "packer-ansible-nginx"
  instance_type = "t2.micro"
  region        = "us-west-2"

  source_ami_filter {
    filters = {
		  # COMPLETE ME complete the "name" argument below to use Ubuntu 24.04
      name = "ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20240820"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"] 
	}
  ssh_username = "ubuntu"
  
}

build {
  name = "packer-ansible-nginx"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
    provisioner "shell" {
      inline = [
        "echo installing ansible",
        "sudo apt update -y",
        "sudo apt install -y software-properties-common",      
        "sudo add-apt-repository --yes --update ppa:ansible/ansible",
          "sudo apt install -y ansible",
      ]
    }
	provisioner "ansible" {
      playbook_file = "../ansible/playbook.yml"
	    ansible_env_vars = ["ANSIBLE_HOST_KEY_CHECKING=False"]
      extra_arguments  = ["-vvv"]
      user = "ubuntu"
	}

  # COMPLETE ME
  # add configuration to: 
  # - use the source image specified above
  # - use the "ansible" provisioner to run the playbook in the ansible directory
  # - use the ssh user-name specified in the "variables.pkr.hcl" file
}
