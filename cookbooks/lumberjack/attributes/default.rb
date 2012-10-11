# This is the list of hosts receiving lumberjack events.
# Only one is in use at any given time, when a connection fails
# a new one will be selected at random.
#default.lumberjack.hosts = []

# This is the remote port lumberjack will connect to, you'll want to have
# logstash listen on this port.
default.lumberjack.port = 5005

# Set the fields to any arbitrary fields you want to pass along with each
# event.
default.lumberjack.fields = {
  "type" => "megalog"
}

# The list of paths to monitor
# Example: [ "/var/log/messages", "/dh/apache2/*/logs/mega.log" ]
#default.lumberjack.paths = []
