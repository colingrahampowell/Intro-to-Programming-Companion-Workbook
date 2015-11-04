#Tealeaf Introduction to Programming, Companion Workbook
#Easy Quiz 1, Question 2

#Difference between ! and ?: 

#1. != is 'not equal to', use when comparing values or using conditional statements. 

a = 1
b = 2

puts "1. #{a != b}" #returns true

#2. ! before something, like !username, means 'not', returns opposite of boolean equivalent.

puts "2. #{!a == 1}" #returns false; 1 evaluates to true
puts "2. #{!a == false}" #returns true
puts "2. #{!(3==3)}" #returns false
puts "2. #{!false}" #returns true

#3. ! after something, like uniq!, usually (but not always!) indicates a method that modifies the
    #original object instead of returning a second object.
    #! after a method is part of the method name, so can't always be sure of the 
    #specific use.

arr = [1,2,2,3,4,5]
arr.uniq
puts "3. arr.uniq: #{arr}"

arr.uniq!
puts "3. arr.uniq! #{arr}"

#4. ? before something: used with conditionals, for instance: if statement shorthand. 

puts "4. #{((a == 1) ? "a is 1!" : "a isn't 1...")}"

#5 ? after something: part of the method name, doesn't inherently mean anything.
   #usually means a method that returns a boolean; like String.empty? or Array.include?

arr2 = [1,2,3,4,5,6,7,8,9,10]
puts "5. #{arr2.empty?}" #returns false

#6. !! before something: not-not, equivalent to !(!). Turns any object into its boolean equivalent. 

puts "6. #{!!(a=1)}" #true 
