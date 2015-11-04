#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 2, Question 4

#A quick glance at the docs for the Ruby String class will have you scratching 
#your head over the absence of any "word iterator" methods.

#Our natural inclination is to think of the words in a sentence as a collection. 
#We would like to be able to operate on those words the same way we operate on the 
#elements of an array. Where are the String#each_word and the String#map_words methods?

#A common idiom used to solve this conundrum is to use the String#split in conjunction 
#with Array#join methods to break our string up and then put it back together again.

#Use this technique to break up the following string and put it back together with 
#the words in reverse order:

sentence = "Humpty Dumpty sat on a wall."

p sentence.split(' ').reverse.join(' ') #the easy way

#The complicated way (without using reverse)

arr = sentence.split(' ') 

(arr.length-1).downto(0) do |i| 
 arr << arr.delete_at(i) #delete_at returns the deleted value; do this and append to arr
end
p arr

