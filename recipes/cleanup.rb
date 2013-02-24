execute "apt-get-clean" do
    command "apt-get -y clean; apt-get -y autoremove"
    action :run
end

execute "fill-disk-space" do
    command "dd if=/dev/zero of=/EMPTY bs=1M; rm -f /EMPTY"
    action :run
end
