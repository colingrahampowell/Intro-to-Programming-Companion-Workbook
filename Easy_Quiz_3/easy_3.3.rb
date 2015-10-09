#Tealeaf Introduction to Programming, Companion Workbook
#Quiz 3, Question 3

#Commented text (but not the answer) taken from the question, for clarity.

#In the previous exercise we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#flintstones << "Dino"

#We could have used either Array#concat or Array#push to add Dino to the family.

#How can we add multiple items to our array? (Dino and Hoppy)

flintstones.concat(%w(Dino Hoppy))

p flintstones