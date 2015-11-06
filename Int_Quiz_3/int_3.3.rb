
#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 3, Question 3

#Let's call a method, and pass both a string and an array as parameters and see 
#how even though they are treated in the same way by Ruby, the results can be different.

#Study the following code and state what will be printed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" #Outputs "rutabaga"
puts "My array looks like this now: #{my_array}" #Outputs ["pumpkins", "rutabaga"]

#ANSWER: Same block of code as Intermediate Quiz 2, Question 3.

#my_string is passed to the method as a_string_param; different variables that point to (reference) the same object.
#the operation a_string_param += "rutabaga" can be rewritten as a_string_param = a_string_param + "rutabaga"
#when a_string_param is assigned a new value, its association with the object is broken. The += operator will not 
#produce an effect on my_string outside of the method.

#my_array is passed to the method as an_array_param; again, different variables that point to or reference the same object.
#the operation an_array_param << "rutabaga" appends "rutabaga" to the object referenced by an_array_param. This 
#means that my_array, in turn, is permanently changed. 

#Variables point to objects, or places in memory. Mutating that object will in turn modify all variables that point to that object.