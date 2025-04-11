#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
#It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

#Example
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
  # Calculate the length of the array; stock_length = array.length
  # run the map function; array.map {|number| number - array[i]}
end

def largest_diff(numbers)
  #doesn't run a calculation if there is only 1 number
  return 0 if numbers.length < 2
  #sets initial max_diff to 0
  max_diff = 0
  #sets first number to subtract as first nubmer of array
  min_num = numbers.first
  numbers.each do |num|
    #first max_diff is the max number between max_diff or num - min_num
    max_diff = [max_diff, num - min_num].max
    #replaces current min number if next number is smaller
    min_num = [min_num, num].min
  end
  #need to update to return an array of 2 numbers with [index(minnum) index(maxnum)]
  return max_diff
end

numbers = [5, 8, 2, 9, 1]

p largest_diff(numbers)