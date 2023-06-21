class HomeController < ApplicationController
  require 'stock_quote'
  def index
    if params[:ticker] == ""
      @nothing = "You forgot to enter a symbol"
    elsif params[:ticker]
    StockQuote::Stock.new(api_key: 'sk_c21a00c6fe03437481d9371e280d2c04')
      begin
      @stock = StockQuote::Stock.quote(params[:ticker])
      rescue RuntimeError => e
      @error = "There was an Error retrieving stock data: #{e.message}"
      end
    end
  end

  def about
  end

end
