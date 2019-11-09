# algorithm for find best day for buy and sale stocks

SALE = [4, 5, 2, 5, 10, 7]
BUY  = [2, 2, 5, 3, 1, 2]

def find_solution(days)
  medium = (days.size/2.0).round
  if days.size == 1
    return 0
  end
  left_days = days[0...medium]
  right_days = days[medium..-1]
  right_sale = right_days.map { |i| SALE[i-1] }
  left_buy  = left_days.map { |i| BUY[i-1]  }
  case3 = right_sale.max - left_buy.min
  result = [find_solution(left_days), find_solution(right_days), case3].max
end

puts find_solution([1,2,3,4,5,6]) # return => 8
