# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"

  # ssh
  config.ssh.forward_x11 = true
  config.ssh.forward_agent = true

  # Install lastest chef on the VM using the vagrant omnibus plugin
  config.omnibus.chef_version = :latest


  # dev optimization: anaconda's big, so put it in the cache for development if
  # it's already been downloaded
  [
    'Anaconda-1.8.0-Linux-x86.sh',
    'Anaconda-1.8.0-Linux-x86_64.sh',
    'Anaconda-1.9.2-Linux-x86.sh',
    'Anaconda-1.9.2-Linux-x86_64.sh',
    'Anaconda-2.0.1-Linux-x86.sh',
    'Anaconda-2.0.1-Linux-x86_64.sh',
    'Anaconda-2.1.0-Linux-x86.sh',
    'Anaconda-2.1.0-Linux-x86_64.sh',
    'Anaconda-2.2.0-Linux-x86.sh',
    'Anaconda-2.2.0-Linux-x86_64.sh',
    'Anaconda3-2.2.0-Linux-x86.sh',
    'Anaconda3-2.2.0-Linux-x86_64.sh',
  ].each do |f|
    if File.exists?(f)
      config.vm.provision :shell do |shell|
        shell.inline = 'if [[ ! -f $1 ]]; then cp $1 $2; fi'
        shell.args = [ "/vagrant/#{f}",  '/var/chef/cache' ]
      end
    end
  end


  # Use chef to provision this machine
  config.vm.provision "chef_solo" do |chef|

    # Cookbooks directory path relative to this file
    chef.cookbooks_path = "cookbooks"

    # specify anaconda installation attirbutes
    chef.json = {
      :anaconda => {
        :version => '3-2.2.0',
        :flavor => 'x86_64',
        :accept_license => 'yes',
      }
    }

    # specify the chef run list
    chef.run_list = [
      'recipe[anaconda::default]',
      'recipe[anaconda::shell_conveniences]',
      #'recipe[anaconda::notebook_server]',
      'recipe[anaconda-packages::default]',
    ]

  end



  # ===================================================================
  # initial vagrantfile configuration options below

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL

  # ===================================================================


end
