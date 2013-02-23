include_recipe "kdeploy-hosting::update"
include_recipe "kdeploy-hosting::ssh"
include_recipe 'git'
include_recipe "kdeploy-hosting::mysql"
include_recipe "kdeploy-hosting::apache"
include_recipe "kdeploy-hosting::php"
include_recipe 'java'
include_recipe "kdeploy-hosting::kdeploy"
