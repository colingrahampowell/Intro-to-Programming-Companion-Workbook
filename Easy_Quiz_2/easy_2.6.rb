#Tealeaf Introduction to Programming, Companion Workbook
#Easy Quiz 2, Question 6

#Commented text (but not the answer) taken from the question, for clarity.

#Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#For fun, start by solving as if the name needs to be associated with the age:

lowest_age = ages.min_by{|(name,age)| age} #solving as an array

p lowest_age #as an array.
p lowest_age[1] #if you need just the age. 

#But really, you'd do it like this:

p ages.values.min #Ruby-docs sez: min without block assumes Comparable (<=>). 

