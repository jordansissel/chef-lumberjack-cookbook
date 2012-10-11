user "lumberjack"
group "lumberjack"

file"/etc/ssl/certs/lumberjack.crt" do
  action :create
  content node.lumberjack.ssl_ca_cert_string
  mode "0644"
end

package "lumberjack"

runit_service "lumberjack"
