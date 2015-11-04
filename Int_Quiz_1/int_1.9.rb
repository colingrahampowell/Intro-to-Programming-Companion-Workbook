#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 1, Question 9

#Given the munsters hash below

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#Modify the hash such that each member of the Munster family has an 
#additional "age_group" key that has one of three values describing 
#the age group the family member is in (kid, adult, or senior). 

p munsters["Herman"]["age"] # just checking the syntax

# I used 'each_key' here, but using 'each' would have been easier and simpler.

munsters.each_key do |k|
  case munsters[k]["age"]
  when 0..16
    munsters[k]["age_group"] = "kid"
  when 17..64
    munsters[k]["age_group"] = "adult"
  when 65..Float::INFINITY
    munsters[k]["age_group"] = "senior"
  
  end  
end 

#Using 'each'

munsters.each do |name, stats|
  case stats["age"]
  when 0..16 
    stats["age_group"] = "kid"
  when 17..64
    stats["age_group"] = "adult"
  when 65..Float::INFINITY
    stats["age_group"] = "senior"
  end 
end 

p munsters