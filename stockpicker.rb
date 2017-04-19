def stock_picker(stock_list)

  max_profit = 0
  buy_day = 0
  sell_day = 0
  profit = 0

  stock_list.each_with_index do |price, i| 
    profit = (stock_list[i+1..-1].max || stock_list[-1]) - price
    if profit > max_profit
      max_profit = profit
      buy_day = i
      sell_day = stock_list.index stock_list[i+1..-1].max
    end
  end

  [buy_day, sell_day]
end