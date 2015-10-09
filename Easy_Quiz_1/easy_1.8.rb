#Tealeaf Introduction to Programming, Companion Workbook
#Quiz 1, Question 8

#Commented text (but not the answer) taken from the question, for clarity.

#If we build an array like this: 

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

#We will end up with this nested array:

#["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
p flintstones #just checking

#Make this into an un-nested array

#ANS:

flintstones.flatten! #modify the caller, remove nests.

p flintstones #nice, flat array.