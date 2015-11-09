
#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 3, Question 4

#To drive that last one home...let's turn the tables and have the string show a 
#modified output, while the array thwarts the method's efforts to modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param.gsub!('pumpkins', 'rutabaga')
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#ANSWER: Similar to the last question, but reversed. a_string_param.gsub! modifies the string object in place; as
#a_string_param and my_string reference the same object, my_string is modified as well.

#an_array_param is reassigned to ["pumpkins", "rutabaga"], which points to a different object. Thus, my_array (and
#the object that it points to) are unmodified.