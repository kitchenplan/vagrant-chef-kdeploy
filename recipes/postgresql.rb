
package "postgresql-9.1"
package "python-psycopg2"

service "postgresql" do
  supports [:restart]
  action :enable
end

template "/etc/postgresql/9.1/main/pg_hba.conf" do
    source "pg_hba.conf"
    owner "root"
    mode "0755"
    notifies :restart, "service[postgresql]"
end

execute "create smlscript user" do
    command "psql -d template1 -c 'create user smlscript;'"
    user "postgres"
    action :run
    not_if "psql -d template1 -tAc \"SELECT * FROM pg_roles WHERE rolname='smlscript'\" | grep -q smlscript", :user => 'postgres'
end

execute "set smlscript user password" do
    command "psql -d template1 -c \"alter user smlscript with password 'sml';\""
    user "postgres"
    action :run
end

execute "grant smlscript user all the rights" do
    command "psql -d template1 -c \"GRANT SELECT ON pg_shadow TO smlscript;\""
    user "postgres"
    action :run
end
