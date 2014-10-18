#
# Cookbook Name:: openstack-sample
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "mysql::server"
include_recipe "mysql::client"
include_recipe "database"
include_recipe "database::mysql"

mysql_connection_info = {
  :host     => node['mysql']['host'],
  :username => 'root',
  :password => node['mysql']['server_root_password']
}

mysql_database 'sample_bbs' do
  connection mysql_connection_info
  action :create
end

mysql_database_user 'user' do
  connection mysql_connection_info
  password 'password'
  database_name 'sample_bbs'
  host '%'
  privileges [:all]
  action [:create, :grant]
end
