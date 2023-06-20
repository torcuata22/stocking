class HomeController < ApplicationController
  require 'stock_quote'
  def index
    StockQuote::Stock.new(api_key: 'sk_c21a00c6fe03437481d9371e280d2c04')
    begin
      @stock = StockQuote::Stock.quote('FB')
      @stock_div = StockQuote::Stock.dividends('FB')
    rescue StandardError => e
      @error_message = "Error occurred: #{e.message}"
    end
  end

  def about
  end

end
