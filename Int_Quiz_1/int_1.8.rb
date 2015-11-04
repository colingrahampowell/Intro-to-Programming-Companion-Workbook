#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 1, Question 8

#In another example we used some built-in string methods to change the 
#case of a string. A notably missing method is something provided in Rails, 
#but not in Ruby itself...titleize! This method in Ruby on Rails creates 
#a string that has each word capitalized as it would be in a title.

#Write your own version of the rails titleize implementation.

def titleize(string)

string.split(' ').each {|i| i.capitalize!}.join(" ")

end 

puts "Enter a title, but DUDE! No need to worry about caps. Got it covered."
input = gets.chomp

p titleize(input)