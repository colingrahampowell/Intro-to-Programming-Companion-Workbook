#Tealeaf Introduction to Programming, Companion Workbook
#Quiz 1, Question 10

#Commented text (but not the answer) taken from the question, for clarity.

#Given the array below:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

#Turn this array into a hash where the names are the keys and the values are the positions in the array.

#ANS:

stone_hash = Hash.new {} #or stone_hash = {}

flintstones.each_with_index {|name, idx| stone_hash[name] = idx }

p stone_hash

