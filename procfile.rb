
# Procfile
web: bundle exec puma -p $PORT -e production -C config/puma.rb
