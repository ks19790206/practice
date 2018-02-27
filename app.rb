require 'rubygems'
require 'bundler'

Bundler.require
set :database,{adapter: "sqlite3",database: "datas.sqlite3"}
class Datas < ActiveRecord::Base
  validates_presence_of :area
  validates_presence_of :name
  validates_presence_of :adress
  validates_presence_of :email
  validates_presence_of :tel

get '/' do
 erb :index_staff_all
end

get '/staff_insert' do
 erb :staff_insert
end



post '/datas' do
 puts "###これはPOSTされたデータです###"
 p params
 name=params[:area,:name,:adress,:email,:tel]
 data=Datas.new({area: area,name: name,adress: adress,email: email,tel: tel })
 data.save
 redirect '/'
 end
end
