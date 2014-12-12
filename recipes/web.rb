#
# Cookbook Name:: sample-app
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "python::pip"

%w{ gcc python-devel python-crypto mysql-devel}.each do |p|
  package p do
    action :install
  end
end

python_pip "setuptools" do
  action :upgrade
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

directory "/root/templates" do
  owner "root"
  group "root"
  mode 0644
  action :create
end

cookbook_file "web.html" do
  path "/root/templates/web.html"
  mode 0644
  action :create_if_missing
end

cookbook_file "web.init.sh" do
  path "/etc/init.d/web.init.sh"
  mode 0755
  action :create_if_missing
end

service "web.init.sh" do
  action :start
end

