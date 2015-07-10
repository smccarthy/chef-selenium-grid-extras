# chef-selenium-grid-extras-cookbook

This cookbook will download and configure Selenium-Grid-Extras

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-selenium-grid-extras']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### chef-selenium-grid-extras::default

Include `chef-selenium-grid-extras` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-selenium-grid-extras::default]"
  ]
}
```

## License and Authors

Author:: Shawn McCarthy (shawn.mccarthy3@gmail.com)
