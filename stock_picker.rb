def stock_picker(arr)
  res = {}
  arr.each_index do |buy_day|
    (buy_day + 1...arr.length).each do |sell_day| 
      profit = arr[buy_day] - arr[sell_day]
      if profit < 0
        res[profit.abs] = [buy_day, sell_day]
      end
    end
  end
  p res
  res[res.keys.max]
end

#p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([rand(100), rand(100), rand(100), rand(100), rand(100), rand(100), rand(100), rand(100), rand(100)])
