#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 2, Question 1

#Given the munsters hash below

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#Figure out the total age of just the male members of the family.

i = 0 #counter variable

munsters.each do |name,stats|
  if stats["gender"].eql?("male")
    i += stats["age"]
  end 

end 

p i