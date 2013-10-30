#
# Cookbook Name : massive-octo-archer
# Recipe : api
#

include_recipe 'deploy'

node[:deploy].each do |application, deploy|
		Chef::Log.info("This is a test application #{application}")
end
