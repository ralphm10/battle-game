require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello!'
end

get '/secret' do
  'You found the secret page...'
end

get '/cat' do
  @name = %w[Amigo Oscar Viking].sample
  erb(:index)
end
