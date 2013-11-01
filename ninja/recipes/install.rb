#
# Cookbook Name:: ninja
# Recipe:: install
#

include_recipe 'deploy'

node[:deploy].each do |application, deploy|
	Chef::Log.info("This is test 2")
		Chef::Log.info("This is a test application #{application}")
		Chef::Log.info("This is the deploy ibject: #{deploy.to_yaml}")
end

deploy "api" do
  Chef::Log.info("This is a test application deploy api #{application}")
end
