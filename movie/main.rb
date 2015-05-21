require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/movies' do
  @mTitle = params[:mTitle] || "Alien"
  @title = @mTitle
  url = "http://www.omdbapi.com/?s=#{@title}"
  movie_data = HTTParty.get url
  @movie_array = movie_data['Search']
  if @movie_array.length > 1
    erb :movies
  else
    @single_title = @movie_array[0]["Title"]
    redirect "/movie?mTitle=#{@single_title}"
  end
end



get '/movie' do
  @mTitle = params[:mTitle] || "Jaws"
  @title = @mTitle
  url = "http://www.omdbapi.com/?t=#{@title}"
  movie_data = HTTParty.get url
  @name = movie_data['Title']
  @img = movie_data['Poster']
  @rating = movie_data['imdbRating']
  erb :movie
end



# YahooFinance::get_quotes(YahooFinance::StandardQuote, 'GOOG')['GOOG'].lastTrade
# YahooFinance::get_quotes(YahooFinance::StandardQuote, '@symbol)[@symbol].lastTrade