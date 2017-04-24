#
# Cookbook Name:: deploy
# Recipe:: undeploy
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

log "====> Example of using aws_opsworks_app data_bag"
apps = search("aws_opsworks_app", "deploy:true")
apps.each do |app|
    log "Application #{app['name']} is going to be UNdeployed. The content of the #{app['attributes']['document_root']} directory will be cleaned up."
end

log "====> Example of using aws_opsworks_command data_bag"
command = search("aws_opsworks_command", "type:undeploy").first
command["args"]["app_ids"].each do |my_app_id|
    app = search("aws_opsworks_app", "app_id:#{my_app_id}").first
    log "Application #{app['name']} should be UNdeployed from the directory #{app['attributes']['document_root']} on instance #{command['instance_id']}."
end
