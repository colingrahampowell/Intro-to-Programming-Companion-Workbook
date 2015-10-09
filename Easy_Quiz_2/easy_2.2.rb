#Tealeaf Introduction to Programming, Companion Workbook
#Quiz 2, Question 2

#Commented text (but not my answer) taken from the question, for clarity.

#Add up all of the ages from our current Munster family hash:

#My Way:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total = 0

ages.each_value {|age| total += age}

puts "My way: the total age is #{total}"

#Tealeaf's Way:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total = ages.values.inject(:+) #nice one.

puts "Tealeaf's way: the total age is #{total}"