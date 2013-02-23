git "/opt/kDeploy" do
  repository "git@github.com:Kunstmaan/kDeploy.git"
  reference "master"
  action :sync
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
