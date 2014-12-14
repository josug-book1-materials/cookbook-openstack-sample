#
# Cookbook Name:: sample-app
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "nginx::default"

template "#{node['nginx']['dir']}/sites-available/default" do
  source "default-site.erb"
  owner "root"
  group node['root_group']
  mode 00644
end

file "#{node['nginx']['dir']}/conf.d/default.conf" do
  action :delete
  notifies :reload, 'service[nginx]'
end
