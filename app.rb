require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello!'
end

get '/secret' do
  'You found the secret page...'
end

get '/cat' do
  "<div style='border:dashed red'>
    <img src='http://bit.ly/1eze8aE'>
  </div>"
end
