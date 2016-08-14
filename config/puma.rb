require "active_record"
cwd = File.dirname(__FILE__)+"/.."
ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
ActiveRecord::Base.establish_connection(ENV["us-cdbr-iron-east-04.cleardb.net"] || YAML.load_file("#{cwd}/config/database.yml")[ENV["production"]])
