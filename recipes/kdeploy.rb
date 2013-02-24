directory "/opt/kDeploy" do
  owner "root"
  group "admin"
  mode 0777
  action :create
  recursive true
end

execute "store kdeploy" do
    command "rsync -avh /tmp/kdeploy/* /opt/kDeploy/"
    action :run
end

template "/opt/kDeploy/tools/config.xml" do
    source "config.xml"
    owner "root"
    mode "0755"
end

directory "/etc/tomcat" do
  owner "root"
  group "admin"
  mode 0777
  action :create
  recursive true
end

directory "/home/projects" do
  owner "root"
  group "admin"
  mode 0777
  action :create
  recursive true
end

directory "/home/backupped-projects" do
  owner "root"
  group "admin"
  mode 0777
  action :create
  recursive true
end

directory "/usr/logs" do
  owner "root"
  group "admin"
  mode 0777
  action :create
  recursive true
end
