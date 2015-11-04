#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 1, Question 3

#Commented text (but not the answer) taken from the question, for clarity.

#The result of the following statement will be an error:

#puts "the value of 40 + 2 is " + (40 + 2)

#Why is this and what are two possible ways to fix this?

#Can't implicitly convert a Fixnum (40+2) into a string, and can't add string and Fixnum together
#without matching format. Need to turn the result of 40+2 into a string. 

puts "the value of 40 + 2 is " + (40+2).to_s

puts "the value of 40 + 2 is #{40+2}"