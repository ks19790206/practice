require 'rubygems'
require 'bundler'

Bundler.require
set :database,{adapter: "sqlite3",database: "datas.sqlite3"}

get '/' do
 erb :index_staff_all
end

get '/staff_insert' do
 erb :staff_insert
end



post '/datas' do
 puts "###これはPOSTされたデータです###"
 p params
 redirect '/'
end
