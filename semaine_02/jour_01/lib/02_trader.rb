


def day_trader(prices)
  find_price = prices.dup
  benefits = -1
  res = [0, 0]

  if (prices.size < 2)
    return ("Error, too narrowed array of prices")
  end

  while (find_price.size >= 2) do
    buy_index = find_price.index(find_price[0..-2].min)
    buy = find_price[buy_index]
    sell_index = find_price.index(find_price[buy_index..-1].max)
    sell = find_price[sell_index]

    if (benefits < sell - buy)
      res[0] = prices.index(buy)
      res[1] = prices.index(sell)
      benefits = sell - buy
    end
    find_price.delete_at(buy_index)
  end

  return (res)
end

def try_to_trade(array)
  res = day_trader(array)
  print "#{array}\n"
  if (res.class == Array)
    print "#{res} with a benefits of $#{array[res[1]] - array[res[0]]}\n"
  else
    print "Got : #{res}\n"
  end
  print("\n")
end

try_to_trade([5, 10, 1 , 4 ,6])
try_to_trade([17, 3, 6, 9, 15, 8, 6, 1, 10])
try_to_trade([4, 2, 1])
try_to_trade([2])
