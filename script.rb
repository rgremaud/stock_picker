#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
#It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

E#xample
 #stock_picker([17,3,6,9,15,8,6,1,10])
#[1,4]  # for a profit of $15 - $3 == $12
#
#Below calculates difference between each number and the next
#numbers.each_with_index do |number, index|
    # If it's not the last element, calculate the difference and store it
    #if index < numbers.length - 1
      #differences << numbers[index + 1] - number
    #end
  #end

def stock_picker(array)
  # Function needs to iterate over array, and calculate profit between current day and all days after it
  # Example: Position 0 of 4 day array calculates Day0 - Day 3,2,1
  #                                               Day 1 - Day 2, 1
  #                                               Day 3 - 2
end