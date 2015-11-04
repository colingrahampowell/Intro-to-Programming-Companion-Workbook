#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 2, Question 8

#Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

#What would be the output of this code:

p bar(foo)

#ANSWER: method foo returns "yes" regardless of parameter.
#bar(foo) evaluates to bar("yes")
#within method bar, param == "yes", so if statement evaluates to "no"

