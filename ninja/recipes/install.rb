#
# Cookbook Name:: ninja
# Recipe:: install
#

include_recipe 'deploy'

node[:deploy].each do |application, deploy|
		Chef::Log.info("This is a test application #{application}")
		Chef::Log.info("This is the deploy ibject: #{deploy.to_yaml}")
end
