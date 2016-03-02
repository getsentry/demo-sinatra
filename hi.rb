require 'sinatra'
require 'raven'

Raven.configure do |config|
  config.dsn = 'https://37a0e2bd0ac74613a8e82aca2471929a:747c5e4ae213407691a30b25f85375a1@app.getsentry.com/69082'
  config.release = '0.0.1'
end

use Raven::Rack

get '/hi' do
  "Hello World!"
end

get '/' do
	1/0
	"Error should appear"
end