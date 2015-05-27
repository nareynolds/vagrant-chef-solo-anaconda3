# vagrant-chef-solo-anaconda3
A simple example of how to use Anaconda in a Vagrant + Chef-solo project


## Requirements

This repo is intend to require as little as possible to get started.

You must install:
- [git](https://git-scm.com/)
- [VirtualBox](https://www.virtualbox.org/) 4.0.x, 4.1.x, 4.2.x, or 4.3.x
- [Vagrant](https://www.vagrantup.com/) 1.6+
  - [vagrant-omnibus plugin](https://github.com/schisamo/vagrant-omnibus)

All the necessary cookbooks are provided in this repo:
- [apt](https://github.com/opscode-cookbooks/apt)
- [packagecloud](https://github.com/computology/packagecloud-cookbook)
- [runit](https://github.com/hw-cookbooks/runit)
- [anaconda](https://github.com/thmttch/chef-continuum-anaconda)
- anaconda-packages

## Quickstart

The [Vagrantfile](Vagrantfile) is written to get your Anaconda environment up and running with minimal effort (though it will take at least a few minutes to download the Anaconda installer itself).

```bash
# clone this repo
$> git clone https://github.com/nareynolds/vagrant-chef-solo-anaconda3.git

# change working directory
$> cd vagrant-chef-solo-anaconda3

# start up vagrant - may take a while
$> vagrant up
...

# ssh into your fully provisioned VM
$> vagrant ssh

# check your version of Anaconda
$vagrant> conda --version
conda 3.10.0

# and have fun...
```

Include any additional packages you want install by modifying [cookbooks/anaconda-packages/recipes/default.rb](cookbooks/anaconda-packages/recipes/default.rb).

## The Anaconda Cookbook
This awesome cookbook and more details about using it can be found at its repo: [https://github.com/thmttch/chef-continuum-anaconda](https://github.com/thmttch/chef-continuum-anaconda)

## Author

Nathaniel Reynolds (nathaniel.reynolds@gmail.com)
