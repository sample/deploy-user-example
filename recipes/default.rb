#
# Cookbook Name:: deploy-user
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

user node['deploy-user']['username'] do
  shell node['deploy-user']['shell']
  home node['deploy-user']['home']
  supports manage_home: true
end
