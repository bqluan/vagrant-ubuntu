# Ubuntu 16.04 for Chinese Developers

## Building the box
1. Download [packer](https://www.packer.io/downloads.html)
2. Fetch the latest version of our base box

        $ vagrant box update --box ubuntu/xenial64

    The box will be stored in version-specific directories under
    `~/.vagrant.d/boxes/ubuntu-VAGRANTSLASH-xenial64/`.  Find the path to the `.ovf` file for the
    latest version of the box.  In the following step, this path will be referred to as
    `$UBUNTU_OVF`.
3. Build the new box
    Using the path from the previous step, run the following command to start the build.

        $ packer build -var "base_box_ovf=$UBUNTU_OVF" ubuntu.json

    When finished, your working directory will contain a file named
    `packer_virtualbox-ovf_virtualbox.box`.
4. Verify your box locally

        $ vagrant box add --name ubuntu16 packer_virtualbox-ovf_virtualbox.box

    This will make a vagrant box named `ubuntu16` locally available to vagrant
    (i.e. not on Vagrant Cloud).
