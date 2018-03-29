#
# Cookbook Name::cookbook_totara
# Recipe:: php
#
# Install php
#

node.set['php']['version'] = node['cookbook_totara']['default_config']['php']['version']
node.set['php-fpm']['pools'] = node['cookbook_totara']['default_config']['php-fpm']['pools']
node.set['php']['packages'] = node['cookbook_totara']['default_config']['php']['packages']

include_recipe "php"
include_recipe "php-fpm"