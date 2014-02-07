require 'bundler'
Bundler.require

configure :production do
  set :start_time, Time.now

  before do
    last_modified settings.start_time
    etag settings.start_time.to_i
  end
end

get '/' do
  erb :index
end
