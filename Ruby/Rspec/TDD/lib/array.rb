def uniq(array) 
  uniq_array = [] 

  array.each do |el| 
    uniq_array << el unless uniq_array.include?(el) 
  end 

  uniq_array
end 


def two_sum(array) 
  pairs = [] 

  len = array.length - 1 

  (0..len).each do |p1| 
    (p1 + 1..len).each do |p2| 
      pairs << [p1, p2] if array[p1] + array[p2] == 0
    end 
  end 

  pairs 
end 

p two_sum([-5, -3, 1, 3])


def transpose(rows) 
  dimension = rows.first.count 
  cols = Array.new(dimension) { Array.new(dimension) } 

  dimension.times do |i| 
    dimension.times do |j| 
      cols[j][i] = rows[i][j] 
    end 
  end 

  cols 
end



def pick_stocks(prices) 
  best_profit = 0 
  best_pair = nil 
  
  prices.each do |buy_date| 
    prices.each do |sell_date| 

      next if sell_date < buy_date 

      profit = prices[sell_date] - prices[buy_date] 

      if profit > best_profit
        best_pair, best_profit = [buy_date, sell_date], profit
      end 
    end 
  end 

  best_pair
end 



