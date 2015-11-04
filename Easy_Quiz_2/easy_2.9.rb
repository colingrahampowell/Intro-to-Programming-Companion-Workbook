#Tealeaf Introduction to Programming, Companion Workbook
#Easy Quiz 2, Question 9

#Commented text (but not the answer) taken from the question, for clarity.

#Using array#map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map do |i| #Long form.
  i[0,3]
end 

p flintstones