def stock_picker(stocks)
  max_profit = 0
  best_days = []

  stocks.each_with_index do |buy_price, buy_day|
    stocks[buy_day+1..-1].each_with_index do |sell_price, sell_day_offset|
      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, buy_day + 1 + sell_day_offset]
      end
    end
         end

  best_days
end

stocks = [10, 20, 15, 30, 5]
result = stock_picker(stocks)
puts "Buy on day #{result[0]} and sell on day #{result[1]} for a profit of #{stocks[result[1]] - stocks[result[0]]}"
