#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 2, Question 5

answer = 42

def mess_with_it(some_number) 
  some_number += 8 #adds 8 to the some_number variable, which is redirected to another object
end

new_answer = mess_with_it(answer) #new_answer now equal to 50. 

p answer - 8 #returns 34; answer variable not affected by method.