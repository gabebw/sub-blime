require 'bundler/setup'
require 'sinatra'
require 'sass'

get '/css/:stylesheet.css' do
  scss :"css/#{params[:stylesheet]}"
end

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

