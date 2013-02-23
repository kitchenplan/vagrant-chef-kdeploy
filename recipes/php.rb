include_recipe "php::default"
package "php5-fpm"
package "php5-mysqlnd"
package "php5-mcrypt"
package "php-apc"
package "php5-imagick"
package "php5-cli"
package "php5-gd"
package "php5-memcached"
package "php5-curl"
package "php5-intl"
package "php5-dev"
package "php-pear"

directory "/etc/php5/fpm/pool.d" do
  owner "root"
  group "admin"
  mode 0777
  action :create
  recursive true
end

service "php5-fpm" do
    service_name "php5-fpm"
    supports [:restart, :reload, :status]
    action :enable
end

template "/etc/php5/conf.d/99-kunstmaan.ini" do
    source "phpconfig.erb"
    owner "root"
    mode "0755"
end

composer "/usr/local/bin" do
    owner "root" # optional
    action [:install, :update]
end
