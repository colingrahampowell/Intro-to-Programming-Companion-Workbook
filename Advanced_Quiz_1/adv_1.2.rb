#Tealeaf Introduction to Programming, Companion Workbook
#Advanced Quiz 1, Question 2

#What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # a => "hi there"

#informal_greeting points to the same space in memory as greetings[:a].
#the << operation, which modifies an object in place, is called on 
#informal_greeting. greetings, which points to the same object, is 
#modified in turn. 