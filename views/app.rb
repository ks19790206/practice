require 'rubygems'
require 'bundler'

Bundler.require

get '/' do
 erb :index
end

get '/name_new' do
 erb :name
end

post '/data' do
 puts "###これはPOSTされたデータです###"
 p params
 redirect '/'
end
