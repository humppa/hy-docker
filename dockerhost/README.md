
# dockerhost

Provisioning and configuration for running Docker in a dedicated Debian Buster
virtual machine. Terraform assumes local KVM virtualization and *libvirt*
provider are available.

## usage

1. Check `dockerhost.tf` and do the usual Terraforming:

        $ terraform plan
        $ terraform apply

2. Get the IP address of the new VM:

        $ virsh net-dhcp-leases default

3. Install Docker to the new VM:

        $ ansible-playbook -i ${IP}, -u docker --private-key=id_docker dockerhost.yml [-CD]
