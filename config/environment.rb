require 'dotenv'
Dotenv.load

# Sinatra設定
set :port, 4567
set :bind, '0.0.0.0'
set :host_authorization, { permitted_hosts: [] }
set :protection, false
