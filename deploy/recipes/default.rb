#
# Cookbook Name:: undeploy
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

# output all apps

data_bag("aws_opsworks_app").each do |app|
    log Chef::JSONCompat.to_json_pretty(data_bag_item("aws_opsworks_app", app))
end
