#Tealeaf Introduction to Programming, Companion Workbook
#Easy Quiz 3, Question 4

#Commented text (but not the answer) taken from the question, for clarity.

#Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."
#...remove everything starting from "house".

#Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

p advice.slice!(0, advice.index("house")) 

p advice

#slice instead of slice! wouldn't permanently alter the advice string.