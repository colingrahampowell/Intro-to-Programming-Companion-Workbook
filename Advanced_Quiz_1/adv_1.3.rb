#Tealeaf Introduction to Programming, Companion Workbook
#Advanced Quiz 1, Question 3

#In other exercises we have looked at how the scope of variables 
#affects the modification of one "layer" when they are passed to another.

#To drive home the salient aspects of variable scope and modification 
#of one scope by another, consider the following similar sets of code.

#What will be printed by each of these code groups?

#A)

  def mess_with_vars(one, two, three)
    one = two #these variables have no connection to variables outside of the method
    two = three #thus values of one, two, and three will not change outside of the method.
    three = one
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars(one, two, three)

  puts "one is: #{one}" #one is one
  puts "two is: #{two}" #two is two
  puts "three is: #{three}" #three is three

#B)

  def mess_with_vars(one, two, three)
    one = "two" #same as above; changing the assignment to a different string
    two = "three" #causes the method variables create and point to a different
    three = "one" #object. no change outside of the method.
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars(one, two, three)

  puts "one is: #{one}" #one is one
  puts "two is: #{two}" #two is two
  puts "three is: #{three}" #three is three

#C)

  def mess_with_vars(one, two, three)
    one.gsub!("one","two") #this, however, will modify variables outside of the string
    two.gsub!("two","three") #gsub modifies the object itself. method variables initially point to 
    three.gsub!("three","one") #the same object as the caller, so modifying in place will have effects 
                                #outside of the method.
  end                       

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars(one, two, three)

  puts "one is: #{one}" #one is two
  puts "two is: #{two}" #two is three
  puts "three is: #{three}" #three is one