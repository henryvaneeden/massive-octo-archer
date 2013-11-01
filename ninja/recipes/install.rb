#
# Cookbook Name:: ninja
# Recipe:: install
#

include_recipe 'deploy'

node[:deploy].each do |application, deploy|
  Chef::Log.info("This is test 2")
  Chef::Log.info("This is a test application #{application}")
  Chef::Log.info("This is the deploy ibject: #{deploy.to_yaml}")

  deploy "api" do
    repo "#{node['repository']}"
    revision "HEAD"
    action :deploy
  end
end