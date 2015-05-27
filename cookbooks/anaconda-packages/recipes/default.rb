#
# Cookbook Name:: anaconda-packages
# Recipe:: default
#
# Copyright 2015, nareynolds
#
# All rights reserved - Do Not Redistribute
#

# Example: install rpy2 into Anaconda
anaconda_package 'rpy2' do
  action :install
end

# Example: install django into Anaconda
anaconda_package 'django' do
  action :install
end

# change and/or repeat as needed...