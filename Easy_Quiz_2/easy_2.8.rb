#Tealeaf Introduction to Programming, Companion Workbook
#Easy Quiz 2, Question 8

#Commented text (but not the answer) taken from the question, for clarity.

#In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Find the index of the first name that starts with "Be"

p flintstones.index {|idx| idx.start_with?("Be") } #My way.

p flintstones.index {|name| name[0,2] == "Be" } 

#Tealeaf's way. Slice method on name (name[0,2] defines start index and length, not a range)
#That would be [0..1] Like so:

p flintstones.index {|name| name[0..1] == "Be"}