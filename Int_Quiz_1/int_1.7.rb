#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 1, Question 7

#Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator, 
#A user passes in two numbers, and the calculator will keep computing the 
#sequence until some limit is reached.

#Ben coded up this implementation but complained that as soon as he ran it, 
#he got an error. Something about the limit variable. What's wrong with the code?

#limit = 15 - don't separately define limit variable - out of method's scope.
 
def fib(first_num, second_num, limit) #add to method's scope.
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0,1, 15) #add limit here
puts "result is #{result}"

#How would you fix this so that it works?
#ANSWER - see above.