#Tealeaf Introduction to Programming, Companion Workbook
#Quiz 1, Question 9

#Commented text (but not the answer) taken from the question, for clarity.

#Given the hash below:

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

#Turn this into an array containing only two elements: Barney's name and Barney's number

#One way:

arr = flintstones.select {|k,v| k == "Barney"}.to_a.flatten

p arr

#Another way:

arr = flintstones.assoc("Barney") #cleaner...
p arr