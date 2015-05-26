#
# Cookbook Name:: anaconda-packages
# Recipe:: default
#
# Copyright 2015, nareynolds
#
# All rights reserved - Do Not Redistribute
#


anaconda_package 'astroid' do
  action :install
end

anaconda_package 'django' do
  action :install
end