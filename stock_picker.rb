# frozen_string_literal: true

def stock_picker(stock_prices)
  total_days = stock_prices.length - 1
  largest_profit = 0
  target_days = []
  stock_prices.each_with_index do |stock, index|
    for i in index..total_days
      current_profit = stock_prices[i] - stock
      if current_profit > largest_profit
        largest_profit = current_profit
        target_days = [index, i]
      end
      i += 1
    end
  end
  p target_days
end

stock_picker([100, 3, 6, 9, 15, 8, 6, 1, 0])

# for each day, loop the hypothetical sale of that stock through the remaining days.
# when the largest difference is found, return the start index and end index
# progress
