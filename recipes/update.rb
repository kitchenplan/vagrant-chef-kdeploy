include_recipe "apt"
execute "apt-get-upgrade" do
    command "apt-get -y update; apt-get -y upgrade"
    action :run
end
