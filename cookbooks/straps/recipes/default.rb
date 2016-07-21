#
# Cookbook Name:: straps
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

git_client 'default' do
  action :install
end

python_runtime 'devbox' do
  version '2.7'
end

python_runtime 'devbox' do
  version '3'
end

include_recipe 'straps::dotstash'
