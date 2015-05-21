require 'pry'
require 'sinatra'
require 'sinatra/reloader'


#do you have a problem
get '/problemtree' do
  erb :start
end
#GREAT
get '/problemtree/cookie' do
  erb :cookie
end
#Yes, problem. IS IT A TECHNICAL ONE? 
get '/problemtree/yes' do
  erb :technical
end
#Cookies fix problems. Have a Cookie
get '/problemtree/yes/no' do
  erb :nottechnical
end
#Technical one. HAVE YOU ASKED JOEL/JACK?
get '/problemtree/yes/yes' do
  erb :jsquared
end
#Asked Wolf. IS IT FIXED?
get '/problemtree/yes/yes/wyes' do
  erb :wolf
end
#Asked Joel. IS IT FIXED?
get '/problemtree/yes/yes/jyes' do
  erb :joel
end
#Probably beyond help..no longer a technical problem. Have a cookie anyway.
get '/problemtree/yes/yes/bno' do
  erb :technicalcookie
end
#Not Fixed by Wolf. You need a spirit animal name. Have a cookie and share one with Joel.
get '/problemtree/yes/yes/wyes/no' do
  erb :wolffail
end
#Not Fixed by Joel. maybe its GIT related. Have a cookie and give one to wolf
get '/problemtree/yes/yes/jyes/no' do
  erb :joelfail
end


