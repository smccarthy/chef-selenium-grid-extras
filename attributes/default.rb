#
# Cookbook Name:: selenium_grid_extras
# Recipe:: default
#
# Copyright (C) 2015 Shawn McCarthy
#
# All rights reserved - Do Not Redistribute
#

default[:selenium_grid_extras][:version] = "1.10.0"
default[:selenium_grid_extras][:url] = "https://github.com/groupon/Selenium-Grid-Extras/releases/download/#{node['selenium_grid_extras']['version']}/SeleniumGridExtras-#{node['selenium_grid_extras']['version']}-SNAPSHOT-jar-with-dependencies.jar"
default[:selenium_grid_extras][:type] = "hub"
default[:selenium_grid_extras][:home] = "C:/selenium_grid_extras"
default[:selenium_grid_extras][:shell_script_path] = "C:/selenium_grid_extras/start_selenium_grid_extras.sh"

default[:selenium_grid_extras][:hub][:port] = "4444"
default[:selenium_grid_extras][:hub][:new_session_wait_timeout] = "25000"
default[:selenium_grid_extras][:hub][:capability_matcher] = "org.openqa.grid.internal.utils.DefaultCapabilityMatcher"
default[:selenium_grid_extras][:hub][:throw_on_capability_not_present] = "true"
default[:selenium_grid_extras][:hub][:node_polling] = "5000"
default[:selenium_grid_extras][:hub][:clean_up_cycle] = "5000"
default[:selenium_grid_extras][:hub][:browser_timeout] = "120000"
default[:selenium_grid_extras][:hub][:timeout] = "120000"
default[:selenium_grid_extras][:hub][:max_session] = "5"

default[:selenium_grid_extras][:node][:selenium_protocol] = "WebDriver"
default[:selenium_grid_extras][:node][:browser_name] = "firefox"
default[:selenium_grid_extras][:node][:capability_matcher] = "org.openqa.grid.internal.utils.DefaultCapabilityMatcher"
default[:selenium_grid_extras][:node][:max_instances] = "1"
default[:selenium_grid_extras][:node][:version] = "37"
default[:selenium_grid_extras][:node][:platform] = "WINDOWS"
default[:selenium_grid_extras][:node][:proxy] = "com.groupon.seleniumgridextras.grid.proxies.SetupTeardownProxy"
default[:selenium_grid_extras][:node][:max_session] = "1"
default[:selenium_grid_extras][:node][:port] = "5555"
default[:selenium_grid_extras][:node][:hub_port] = "4444"
default[:selenium_grid_extras][:node][:hub_host] = "127.0.0.1"
default[:selenium_grid_extras][:node][:node_status_check_timeout] = "10000"
default[:selenium_grid_extras][:node][:loaded_from_file] = "node_5555.json"

default[:selenium_grid_extras][:auto_start_node] = "0"
default[:selenium_grid_extras][:hub_config_file] = "hub_4444.json"
default[:selenium_grid_extras][:log_maximum_age_ms] = "864000000"
default[:selenium_grid_extras][:auto_start_hub] = "1"
default[:selenium_grid_extras][:webdriver_version] = "2.46.0"
default[:selenium_grid_extras][:iedriver_version] = "2.46.0"
default[:selenium_grid_extras][:chromedriver_version] = "2.16"
default[:selenium_grid_extras][:default_role] = "hub"
default[:selenium_grid_extras][:auto_update_drivers] = "0"
default[:selenium_grid_extras][:grid_extras_auto_update] = "0"
