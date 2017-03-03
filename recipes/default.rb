#
# Cookbook:: app_jenkins
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#http://mirrors.jenkins.io/war-stable/latest/jenkins.war
directory '/appbin/jenkins' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  recursive true
end

remote_file '/appbin/jenkins/jenkins.war' do
  owner 'root'
  group 'root'
  mode '0644'
  source 'http://mirrors.jenkins.io/war-stable/latest/jenkins.war'
  checksum '3eb599dd78ecf00e5f177ec5c4b1ba4274be4e5f63236da6ac92401a66fa91e8'
end
