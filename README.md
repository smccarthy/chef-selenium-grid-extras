# selenium-grid-extras-cookbook

This cookbook will download and configure Selenium-Grid-Extras. It will also start the selenium-grid-extras jar file on login.

# What this cookbook does not do

Install Java JRE (needed to run the SeleniumGridExtras jar file)<br>
Install any browsers<br>
Set up auto logon

## Supported Platforms

mac_os_x<br>
windows

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:selenium_grid_extras][:version]</tt></td>
    <td>String</td>
    <td>Version of Selenium Grid Extras</td>
    <td><tt>1.10.0</tt></td>
  </tr>
  <tr>
    <td><tt>[:selenium_grid_extras][:url]</tt></td>
    <td>String</td>
    <td>URL Where to download Selenium Grid Extras</td>
    <td><tt>https://github.com/groupon/Selenium-Grid-Extras/releases/download/#{node['selenium_grid_extras']['version']}/SeleniumGridExtras-#{node['selenium_grid_extras']['version']}-SNAPSHOT-jar-with-dependencies.jar</tt></td>
  </tr>
  <tr>
    <td><tt>[:selenium_grid_extras][:type]</tt></td>
    <td>String</td>
    <td>Type of node (hub or node)</td>
    <td><tt>hub</tt></td>
  </tr>
  <tr>
    <td><tt>[:selenium_grid_extras][:home]</tt></td>
    <td>String</td>
    <td>Root directory where Selenium Grid Extras will be downloaded to</td>
    <td><tt>C:/selenium-grid-extras</tt></td>
  </tr>
</table>

## Usage

### selenium-grid-extras::default

Include `selenium-grid-extras` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[selenium-grid-extras::default]"
  ]
}
```

## License and Authors

Author:: Shawn McCarthy (shawn.mccarthy3@gmail.com)
