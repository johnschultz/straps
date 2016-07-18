#
# Cookbook Name:: straps
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

git_client 'default' do
  action :install
end

git_config 'user.email' do
  value 'johnathon.schultz@gmail.com'
  scope 'global'
end

git_config 'user.name' do
  value 'Johnathon Schultz'
  scope 'global'
end

python_runtime 'devbox' do
  version '2.7'
end

python_runtime 'devbox' do
  version '3'
end
