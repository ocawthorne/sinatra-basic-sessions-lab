require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, 'flucloxacillin'
    end

    get('/') {erb :index}

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end

end