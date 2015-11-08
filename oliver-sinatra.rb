require 'sinatra'
require 'thin'
set :server, 'thin'

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end
end

get '/' do
	@txtlines = File.read("oliver.txt")
	erb :oliver, :layout => :layout
end