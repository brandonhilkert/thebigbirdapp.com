require 'bundler'
Bundler.require

set :start_time, Time.now

before do
  last_modified settings.start_time
  etag settings.start_time.to_i
  cache_control
end

get '/' do
  send_file "views/index.html"
end
