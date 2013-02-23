include_recipe "apache2::default"
apache_module "rewrite"

directory "/etc/apache2/conf/projects.d" do
  owner "root"
  group "admin"
  mode 0777
  action :create
  recursive true
end

directory "/etc/apache2/logs" do
  owner "root"
  group "admin"
  mode 0777
  action :create
  recursive true
end

directory "/opt/nowebsite" do
  owner "root"
  group "admin"
  mode 0777
  action :create
  recursive true
end

file "/etc/apache2/conf/projects.d/namevirtualhosts" do
  owner "root"
  mode 0777
  action :create
end

template "/etc/apache2/conf.d/kdeploy.conf" do
    source "apache_kdeploy.erb"
    owner "root"
    mode "0755"
    notifies :restart, "service[apache2]"
end

package "libapache2-mod-fastcgi" do
    notifies :restart, "service[apache2]"
end

apache_module "actions"
apache_module "fastcgi"
