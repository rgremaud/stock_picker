numbers = [17,3,6,9,15,8,6,1,10]

def stock_picker(numbers)
  max_profit = 0
  buy_day = 0
  sell_day = 0

  numbers.each_with_index do |day1, index1|
    numbers.each_with_index do |day2, index2|
      profit = day2 - day1
      if profit > max_profit && numbers.index(day2) > numbers.index(day1) && day2 > day1
        max_profit = profit
        buy_day = index1
        sell_day = index2
      end
    end
  end
  return [buy_day, sell_day] 
end

p stock_picker(numbers)
