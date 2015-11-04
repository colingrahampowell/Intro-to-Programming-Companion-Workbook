#Tealeaf Introduction to Programming, Companion Workbook
#Easy Quiz 2, Question 5

#Commented text (but not the answer) taken from the question, for clarity.

#We have most of the Munster family in our age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

#add ages for Marilyn and Spot to the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

p ages