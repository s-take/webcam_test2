# -*- coding: utf-8 -*-

require 'sinatra/reloader'
require 'sinatra/json'
require 'sinatra/rocketio'
require 'base64'

class Application < Sinatra::Base
  
  def logger
    env['app.logger'] || env['rack.logger']
  end
  
  configure do
    enable :logging
    set :json_content_type, 'application/json; charset=utf-8'
    register Sinatra::RocketIO
    set :websocketio, :port => 3998
  end
  
  configure :development do
    register Sinatra::Reloader
  end
  
  before do
    cache_control :no_cache
  end
  

  io = Sinatra::RocketIO
  
  io.on :connect do |client|
    #puts "new client - <#{client.session}> type:#{client.type} address:#{client.address}"
    puts "new client - #{client.to_s}"
  end
  
  io.on :disconnect do |client|
    #puts "client disconnected - <#{client.session}> type:#{client.type} address:#{client.address}"
    puts "client disconnected - #{client.to_s}"
  end
  
  io.on :photo do |data, client|
    #puts data.size
    #io.push :photoview, data
    
    #io.push :photoview, data, {:to => client.session}
    
    io.push :photoview, data
    
    pp io.channels
    
  end
  
#  io.on :connect do |client|
#    puts "new client - <#{client.session}>"
#    io.push :chat, {:user => 'server', :message => 'hello'}
#  end
  
#  io.on :disconnect do |client|
#    puts "disconnect client - <#{client.session}>"
#    #io.push :chat, {:user => 'system', :message => 'bye'}
#  end
  
#  io.on :chat do |data, client|
#    puts "#{data['user']} - #{data['message']} - <#{client.session}>"
#  end
  
  get '/' do
    erb :index
  end
  
  get '/view' do
    erb :view
  end
  
  post '/photo/create' do
    dir = File.expand_path('../photo', File.dirname(__FILE__))
    path = File.join(dir, DateTime.now.strftime('%Y_%m%d_%H%M_%S_%L') + '.png')
    
    File.open(path, 'wb') do |file|
      file.write(Base64.decode64(params[:img]))
    end
  end
  
end
