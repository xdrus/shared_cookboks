#
# Cookbook Name:: cronjob
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

# test
puts(">>>>>>>>> Run cronjob on host #{node['hostname']} <<<<<<<<<<")

cron "crontab entry" do
  command "echo >>>>> cron"
  time :reboot
  action :create
end
