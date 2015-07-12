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

