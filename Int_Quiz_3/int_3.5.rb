#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 3, Question 5

#How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

#ANSWER: let's try this: 

def color_valid_test(color)
  color == "blue" || color == "green"
end 

p color_valid_test("blue")
p color_valid_test("green")
p color_valid_test("orange")
p color_valid_test("black")

#Ruby automatically evaluates statements - conditional statement will evaluate to
#true or false without specifically asking the method to return true or false
#if either condition is met, method returns true; else, returns false.