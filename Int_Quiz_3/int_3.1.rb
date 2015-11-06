#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 3, Question 1

#Every named entity in Ruby has an object_id. This is a unique identifier 
#for that object.

#It is often the case that two different things "look the same", but they 
#can be different objects. The "under the hood" object referred to by a 
#particular named-variable can change depending on what is done to that 
#named-variable.

#In other words, in Ruby everything is an object...but it is not always 
#THE SAME object.

#Predict how the values and object ids will change throughout the flow 
#of the code below:


#ANSWER: See comments - attempting to annotate my thought process.

def fun_with_ids
  a_outer = 42 #let's say a_outer.object_id = m
  b_outer = "forty two" #let's say b_outer.object_id = n
  c_outer = [42] #let's say c_outer.object_id = o
  d_outer = c_outer[0] #let's say d_outer.object_id = m ... d_outer is 42, which has a different object_id than [42]. Same as a_outer

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  #This just establishes initial values...

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block.\n\n"

  1.times do
    a_outer_inner_id = a_outer.object_id #a_outer_inner_id = m
    b_outer_inner_id = b_outer.object_id #b_outer_inner_id = n
    c_outer_inner_id = c_outer.object_id #c_outer_inner_id = o
    d_outer_inner_id = d_outer.object_id #d_outer_inner_id = m

    #object_ids do not change for this round:

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer.object_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer.object_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer.object_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer.object_id} inside the block.\n\n"

    #switchin' values...

    a_outer = 22 #let's say now a_outer.object_id = s
    b_outer = "thirty three" #let's say now b_outer.object_id = t
    c_outer = [44] #let's say now c_outer.object_id = u
    d_outer = c_outer[0] #let's say now d_outer.object_id = v

    #Prints new values / object_ids.

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after.\n\n"

    #Assign another variable to the same values...

    a_inner = a_outer 
    b_inner = b_outer
    c_inner = c_outer
    d_inner = c_inner[0]

    a_inner_id = a_inner.object_id #a_inner.object_id = s
    b_inner_id = b_inner.object_id #b_inner.object_id = t
    c_inner_id = c_inner.object_id #c_inner.object_id = u
    d_inner_id = d_inner.object_id #d_inner.object_id = v

    #Thus...a_inner_id = a_outer.object_id, and so on...

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer).\n\n"
  end

#Now, outside of the block: a_outer_id = m, a_outer.object_id = s; b_outer_id = n, b_outer.object_id = t
#Variables created outside of the block, reassigned inside of the block. Accessible outside of the block. 

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block.\n\n"

#Returns "ugh ohhhhh" - can't access a_inner, b_inner, etc. from outside of the block. Variables are local to the block.

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block.\n\n" rescue "ugh ohhhhh"
end
fun_with_ids