#Tealeaf Introduction to Programming, Companion Workbook
#Easy Quiz 2, Question 1

#Commented text (but not the answer) taken from the question, for clarity.

#In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

#see if there is an age present for "Spot".

#Let's generalize a bit...

loop do
  puts "Enter a name."
  name = gets.chomp #let the user enter a name.
  
  if ages.has_key?(name)
    puts "#{name} is #{ages[name]} years old. Type YES to continue..." 
  else 
    puts "No key found. Type YES to continue..."
  end

  if gets.chomp.downcase != "yes"
    break
  end 

end 