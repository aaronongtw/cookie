require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "HOME PAGE"
end

get '/test' do
  "test MAMA"
end

get '/hello' do
  "Hello World."
end

get '/mother' do
  "mama"
end

get '/name/:first' do
  "hello #{ params[:first]}"
end

get '/:root' do
  "#{ params[:root].capitalize}"
end

get '/name/:first/:last' do
  "Hello #{params[:first]} #{params[:last]}"
end

gets '/multiply/:x/:y' do
  x = params[:x].to_f
  y = params[:y].to_f
  total = x * y
  "The Result is #{total}"
end
