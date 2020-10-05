require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello!'
end

get '/secret' do
  'You found the secret page...'
end
