#
# Cookbook Name:: openstack-sample
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "python::pip"
include_recipe "python::virtualenv"

%w{ gcc python-devel python-crypto mysql-devel}.each do |p|
  package p do
    action:install
  end
end

%w{ Flask Flask-SQLAlchemy Flask-WTF MySQL-python httplib2 }.each do |pip|
  python_pip pip do
    action :install
  end
end

%w{ config.py db.py model.py rest.py restclient.py web.py }.each do |f|
  cookbook_file f do
    path "/root/#{f}"
    action :create_if_missing
  end
end

template "/root/endpoint.conf" do
  source "endpoint.conf.erb"
  mode 0644
  owner "root"
  group "root"
  action :create
end

cookbook_file "rest.init.sh" do
  path "/etc/init.d/rest.init.sh"
  mode 0755
  action :create_if_missing
end

service "rest.init.sh" do
  action :start
end
