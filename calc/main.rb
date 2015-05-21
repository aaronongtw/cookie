require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'


#SO GET THE HASH AND GET SPECIFICS FROM LOCAL HASH

get '/finance' do
  @tick = params[:tick] || "GOOG"
  @name = YahooFinance::get_quotes(YahooFinance::StandardQuote, @tick)[@tick].name
  @result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @tick)[@tick].lastTradeWithTime
  @volume = YahooFinance::get_quotes(YahooFinance::StandardQuote, @tick)[@tick].volume
  erb :finance
end


get '/calc' do
  @x = params[:x].to_f
  @y = params[:y].to_f

  @result = case params[:operator]
  when '+' then @x + @y
  when '-' then @x - @y
  when '*' then @x * @y
  when '/' then @x / @y
  end

  erb :calc
end


# YahooFinance::get_quotes(YahooFinance::StandardQuote, 'GOOG')['GOOG'].lastTrade
# YahooFinance::get_quotes(YahooFinance::StandardQuote, '@symbol)[@symbol].lastTrade