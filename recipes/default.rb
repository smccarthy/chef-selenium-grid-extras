#
# Cookbook Name:: selenium_grid_extras
# Recipe:: default
#
# Copyright (C) 2015 Shawn McCarthy
#
# All rights reserved - Do Not Redistribute
#

case node['platform_family']
when 'windows'
  home = 'C:/selenium_grid_extras'
  shell_script_path = 'C:/ProgramData/Microsoft/Windows/Start Menu/Programs/Startup/start_selenium_grid_extras.bat'
  delimeter = '&'
when 'mac_os_x'
  home = "#{ENV['HOME']}/selenium_grid_extras"
  shell_script_path = "#{home}/start_selenium_grid_extras.sh"
  delimeter = ';'
else
  Chef::Log.warn('Selenium-Grid-Extras cannot be installed on this platform using this cookbook.')
end

directory "#{home}" do
  action :create
end

directory "#{home}/log" do
  action :create
end

if node[:selenium_grid_extras][:type] == 'hub'
  template "#{home}/hub_4444.json" do
    source 'hub_4444.json.erb'
  end
elsif node[:selenium_grid_extras][:type] == 'node'
  node.default[:selenium_grid_extras][:node][:platform] = 'WINDOWS'
  template "#{home}/node_5555.json" do
    source 'node_5555.json.erb'
  end
end

template "#{home}/selenium_grid_extras_config.json" do
  source 'selenium_grid_extras_config.json.erb'
end

remote_file "#{home}/Selenium-Grid-Extras.jar" do
  source node[:selenium_grid_extras][:url]
  action :create
end

file "#{shell_script_path}" do
  content "cd #{home}#{delimeter}java -jar Selenium-Grid-Extras.jar"
  mode '755'
end

case node['platform_family']
when 'windows'
  node.default[:selenium_grid_extras][:shell_script_path] = "#{shell_script_path}"
  template "#{home}/START_SELENIUM_GRID_FIRST_TIME.xml" do
    source 'START_SELENIUM_GRID_FIRST_TIME.xml.erb'
  end

  execute 'create_task' do
    command "schtasks /Create /XML #{home}/START_SELENIUM_GRID_FIRST_TIME.xml /TN START_SELENIUM_GRID"
    not_if 'schtasks /Query /tn START_SELENIUM_GRID'
  end

  ### TODO: Only run task if selenium grid extras not currently running
  execute 'run_task' do
    command 'timeout /t 10 > nul #{delimeter} schtasks /RUN /TN START_SELENIUM_GRID'
  end
when 'mac_os_x'
  node.default[:selenium_grid_extras][:home] = "#{home}"
  node.default[:selenium_grid_extras][:shell_script_path] = "#{shell_script_path}"
  template "#{ENV['HOME']}/Library/LaunchAgents/com.groupon.SeleniumGridExtras.plist" do
    source 'com.groupon.SeleniumGridExtras.plist.erb'
  end

  execute 'selenium_grid_extras_start' do
    command "launchctl load -w #{ENV['HOME']}/Library/LaunchAgents/com.groupon.SeleniumGridExtras.plist"
  end
end
