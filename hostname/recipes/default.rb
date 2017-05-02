#
# Cookbook Name:: hostname
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

# output timezone
puts(">>>>>>>>> Hostname is #{node['hostname']} <<<<<<<<<<")
log ">>>>>>>>> node['myapache']['port'] type is <<<<<<<<<<" 
log node['myapache']['port'].class
