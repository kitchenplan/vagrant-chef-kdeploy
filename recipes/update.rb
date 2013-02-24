include_recipe "apt"

apt_repository "kdeploy" do
  uri "http://ppa.launchpad.net/kunstmaan/kdeploy/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "C8F95A94"
  deb_src true
end

execute "apt-get-upgrade" do
    command "apt-get -y update; apt-get -y upgrade"
    action :run
end
