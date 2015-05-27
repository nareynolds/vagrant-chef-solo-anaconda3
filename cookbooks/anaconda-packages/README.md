anaconda-packages Cookbook
==========================
This cookbook is an example of how to install additional packages into Anaconda


Requirements
------------
- [Anaconda Cookbook](https://github.com/thmttch/chef-continuum-anaconda)
- Anaconda dependencies:
  - [apt](https://github.com/opscode-cookbooks/apt)
  - [packagecloud](https://github.com/computology/packagecloud-cookbook)
  - [runit](https://github.com/hw-cookbooks/runit)


Usage
-----
#### anaconda-packages::default

Choose the packages you want install by modifying [recipes/default.rb](recipes/default.rb)

Then, simply include `anaconda` and `anaconda-packages` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[anaconda]",
    "recipe[anaconda-packages]",
  ]
}
```

## Author

Author:: Nathaniel Reynolds (nathaniel.reynolds@gmail.com)
