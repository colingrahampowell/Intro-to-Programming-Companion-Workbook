#Tealeaf Introduction to Programming, Companion Workbook
#Advanced Quiz 1, Question 4

#A UUID is a type of identifier often used as a way to uniquely identify items...which may 
#not all be created by the same system. That is, without any form of synchronization, two or 
#more separate computer systems can create new items and label them with a UUID with no significant 
#chance of stepping on each other's toes.

#It accomplishes this feat through massive randomization. The number of possible UUID values 
#is approximately 3.4 X 10E38.

#Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections 
#like this 8-4-4-4-12 and represented as a string.

#It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

#Write a method that returns one UUID when called with no parameters.

#ANSWER(s): There are many answers.

#ONE: Ruby has a built in method that can do this - so, the easy way:

require 'securerandom'

def uuid_one
  SecureRandom.uuid
end 

p uuid_one

#but, more interesting to try this without SecureRandom:

#TWO: by filling an array

def uuid_two
  uuid_arr = [] #initialize empty array
  #fill array with values...
  until (uuid_arr.length == 32)
    uuid_arr << rand(16).to_s(16) #create random decimal number from 0 to 16, convert to a string representing the base-16 equivalent using to_s(16)
  end 

#insert dashes

uuid_arr.insert(8, "-")
uuid_arr.insert(13, "-")
uuid_arr.insert(18, "-")
uuid_arr.insert(23, "-")

#join arr to string

uuid_arr.join    

end 

p uuid_two

#THREE: by appending to a string

def uuid_three
  uuid = String.new #initialize a string variable

  until (uuid.length == 32) #same operation as with array, above
    uuid << rand(16).to_s(16)
  end 

#inserting dashes, again

uuid.insert(8, "-")
uuid.insert(13, "-")
uuid.insert(18, "-")
uuid.insert(23, "-")

end 

p uuid_three
