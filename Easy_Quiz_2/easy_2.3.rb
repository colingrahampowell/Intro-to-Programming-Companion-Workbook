#Tealeaf Introduction to Programming, Companion Workbook
#Quiz 2, Question 3

#Commented text (but not the answer) taken from the question, for clarity.

#In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

#throw out the really old people (age 100 or older).

ages.delete_if {|name, age| ages[name] >= 100} #Tealeaf's answer uses 'keep_if' method. 

p ages