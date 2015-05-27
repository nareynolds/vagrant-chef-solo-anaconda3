#
# Cookbook Name:: anaconda-packages
# Recipe:: default
#
# Copyright 2015, nareynolds
#
# All rights reserved - Do Not Redistribute
#

# Example: install django into Anaconda
anaconda_package 'django' do
  action :install
end

# Example: install rpy2 into Anaconda
anaconda_package 'rpy2' do
  action :install
  channel "https://conda.binstar.org/r"
end

# change and/or repeat as needed...