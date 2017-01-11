#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
 package "nginx" do
           action :install
 end

node["nginx"]["sites"].each do |sitename, data|
  document_root = "/content/sites/#{sitename}"

  directory document_root do
       mode "0755"
       recursive true
  end  


end

             
service "nginx" do
        action [:enable, :start]
end


