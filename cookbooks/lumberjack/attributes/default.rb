ulimit -n 10000
exec chpst -u lumberjack \
  /opt/lumberjack/bin/lumberjack.sh --host <%= node.lumberjack.hosts.join(",") %> --port <%= node.lumberjack.port %> --ssl-ca-path <%= node.lumberjack.ssl_ca_path %> <%= node.lumberjack.fields.collect { |k,v| "--field #{k}=#{v}" } %> <%= node.lumberjack.paths %>
