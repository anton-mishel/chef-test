#
# Cookbook Name:: nfsmount
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'nfs-common' do
  action :install
end


directory '/admin' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

mount '/admin' do
  device '172.16.60.222:/ibm/devops/admin	'
  fstype 'nfs'
  options "rw"
  action [:mount, :enable]
end
