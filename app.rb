require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'sinatra/activerecord'
require './models'

enable :sessions

helpers do
  def current_user
    User.find_by(id: session[:user])
  end
end

get '/' do
  erb :index
end

get '/signup' do
  erb :signup
end

post '/signup' do
  user = User.create(
    name: params[:user_name],
    password: params[:password],
    password_confirmation: params[:password_confirmation],
    file: params[:profile_image]
  )
  if user.persisted?
    session[:user] = user.id
  end
  redirect '/'
end

post '/signin' do
  user = User.find_by(name: params[:user_name])
  if user && user.authenticate(params[:password])
    session[:user] = user.id
  end
  redirect '/'
end

get '/search' do
  erb :search
end

get '/signout' do
  session[:user] = nil
  redirect '/'
end

helpers do
  def current_user
    User.find_by(id: session[:user])
  end
end
