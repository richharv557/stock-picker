# frozen_string_literal: true

def stock_picker(stock_prices)
  total_days = stock_prices.length - 1
  largest_profit = 0
  target_days = []
  stock_prices.each_with_index do |_stock, index|
    stock_prices[index..total_days].each_with_index do |day_value, i|
      current_profit =  day_value - stock_prices[index]
      if current_profit > largest_profit
        largest_profit = current_profit
        target_days = [index, i + index]
      end
    end
  end
  p target_days
end

stock_picker([100, 3, 6, 9, 15, 8, 6, 1, 0])
