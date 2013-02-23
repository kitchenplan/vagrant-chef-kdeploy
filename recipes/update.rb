include_recipe "apt"
execute "apt-get-upgrade" do
    command "apt-get -y upgrade && touch /var/.upgraded"
    creates "/var/.upgraded"
    action :run
end
