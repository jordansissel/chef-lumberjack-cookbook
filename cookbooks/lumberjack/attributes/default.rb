ulimit -n 10000
exec chpst -u lumberjack \
  /opt/lumberjack/bin/lumberjack.sh --host <%= node.lumberjack.hosts.join(",") %> --port <%= node.lumberjack.port %> --ssl-ca-path <%= node.lumberjack.ssl_ca_path %> <%= node.lumberjack.fields.collect { |k,v| "--field #{k}=#{v}" } %> <%= node.lumberjack.paths %>

default.lumberjack.port = 5005
default.logstash.version = "1.1.2.dev-dh"
default.logstash.home = "/home/logstash"
default.logstash.file = "logstash-#{default.logstash.version}.jar"
default.logstash.url = "http://semicomplete.com/files/logstash/#{default.logstash.file}"

