#
# Cookbook Name:: deploy
# Recipe:: deploy
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

log "====> Example of using aws_opsworks_app data_bag"
apps = search("aws_opsworks_app", "deploy:true")
apps.each do |app|
    log "Application #{app['name']} is going to be deployed"
end

log "====> Example of using aws_opsworks_command data_bag"
command = search("aws_opsworks_command", "type:deploy").first
command["args"]["app_ids"].each do |my_app_id|
    app = search("aws_opsworks_app", "app_id:#{my_app_id}").first
    log "Application #{app['name']} should be deployed to #{app['attributes']['document_root']} on instance #{command['instance_id']}."
end
