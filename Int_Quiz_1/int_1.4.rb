#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 1, Question 4

#Commented text (but not the answer) taken from the question, for clarity.

#What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
What would be output by this code? #"1 3"...number is a counter representing the array value at each
                                   #index. Resulting numbers array is [3,4]. 


numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#1 2 ...pop removes the last two values in the numbers array over the first two iterations. 
#resulting numbers array is [1,2].