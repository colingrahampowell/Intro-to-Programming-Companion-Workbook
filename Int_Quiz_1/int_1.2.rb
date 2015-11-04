#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 1, Question 2

#Commented text (but not the answer) taken from the question, for clarity.

#Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

#My way: 

freq_hash = Hash.new(0)

statement.gsub(' ', '').split('').each do |i| #process statement string pre- iteration
  freq_hash[i] += 1
end

p freq_hash

#My answer does not take order into account, although would be fairly easy to do. The Tealeaf 
#solution implies that order is important, so another approach is below - the Tealeaf way, mostly:

alt_hash = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |i|
  if statement.count(i) > 0
  alt_hash[i] = statement.count(i)
  end 
end 

p alt_hash