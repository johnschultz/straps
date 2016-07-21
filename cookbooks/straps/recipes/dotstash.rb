#
# Cookbook Name:: straps
# Recipe:: dotstash
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

git 'dotstash' do
   repository 'git://github.com/johnschultz/dotstash.git'
   destination "#{ENV['HOME']}/dotstash"
   reference 'master'
   action :checkout
   environment ({ home: "#{ENV['UNPRIV_USER']}" })
   notifies :run, 'execute[flip execute bit]', :immediately
   user ENV['UNPRIV_USER']
end

execute 'flip execute bit' do
   command "chmod +x /home/#{ENV['UNPRIV_USER']}/dotstash/README.sh"
   action :nothing
   notifies :run, 'execute[install dotstash]', :immediately
end

execute 'install dotstash' do
   command "./README.sh" 
   cwd "/home/#{ENV['UNPRIV_USER']}/dotstash"
   user ENV['UNPRIV_USER']
   action :nothing
end
