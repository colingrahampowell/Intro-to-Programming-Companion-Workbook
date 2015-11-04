#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 2, Question 6

#One day Spot was playing with the Munster family's home computer and he 
#wrote a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

puts "munsters object_id: #{munsters.object_id}"

def mess_with_demographics(demo_hash) #object ID for munsters is assigned to demo_hash
  puts "demo_hash object_id: #{demo_hash.object_id}" #same as munsters
  hash = demo_hash #same as munsters...pattern emerging here
  puts "hash object_id: #{hash.object_id}"
  hash.values.each do |family_member| 
    family_member["age"] += 42 
    family_member["gender"] = "other"
  end
end

#After writing this method, he typed the following...and before Grandpa 
#could stop him, he hit the Enter key with his tail:

mess_with_demographics(munsters)

p munsters #checking our answer.

#Did the family's data get ransacked, or did the mischief only mangle a local copy of the original hash? (why?)

#ANSWER: Family's data is ransacked - see above. demo_hash points to the same object as
#munsters. Modifying demo_hash within the method also changes the munsters hash - 
#different variables, but each points to the same place in memory.