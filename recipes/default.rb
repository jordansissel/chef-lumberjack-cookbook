user "lumberjack"
group "lumberjack"

cookbook_file "/etc/ssl/certs/lumberjack.crt" do
  action :create
  source "lumberjack.crt"
  mode "0644"
end

package "lumberjack"

runit_service "lumberjack"
