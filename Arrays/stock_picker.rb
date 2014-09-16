def stock_picker(stock_prices)
  max_profit = 0
  pair_of_days = []

  (0 ... stock_prices.count).each do |idx1|
    (idx1 + 1 ... stock_prices.count).each do |idx2|
      profit = stock_prices[idx1] + stock_prices[idx2]

      if profit > max_profit
        max_profit = profit
        pair_of_days = [idx1, idx2]
      end
    end
  end

  pair_of_days
end

stock_prices = [20, -10, 30, 22, 55, -8, -9, 10, 54]

print stock_picker(stock_prices)