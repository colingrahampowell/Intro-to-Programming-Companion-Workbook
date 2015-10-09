#Tealeaf Introduction to Programming, Companion Workbook
#Quiz 2, Question 10

#Commented text (but not the answer) taken from the question, for clarity.

#Using array#map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map {|i| i[0,3] } #Short form. 

p flintstones