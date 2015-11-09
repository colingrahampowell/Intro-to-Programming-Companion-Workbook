#Tealeaf Introduction to Programming, Companion Workbook
#Advanced Quiz 1, Question 5

#Ben was tasked to write a simple ruby method to determine if an input string is an 
#IP address representing dot-separated numbers. e.g. "10.4.5.11". He is not familiar with regular expressions. 
#Alyssa supplied Ben with a method called is_a_number? to determine if a string is a number and asked Ben to use it.

def dot_separated_ip_address?(input_string)
  return false if input_string.count(".") != 3 #count the dots to determine if the length is correct; 3 dots means five values
    dot_separated_words = input_string.split(".")
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false if !is_a_number?(word)
    end
    return true
end

#Alyssa reviewed Ben's code and says "It's a good start, but you missed a few things. 
#You're not returning a false condition, and not handling the case that there are more or fewer 
#than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

#Help Ben fix his code.

#ANSWER: First, handy to create the method that Alyssa supplied to Ben (or, something like it):

def is_a_number?(num)
  /[a-z[:punct:]]/.match(num.to_s) ? false : true #turn num into a string, use regex to ensure only numbers are present

end 

#Now, modify Ben's code to handle invalid entries:

def dot_separated_ip_address_ans?(input_string)
  return false if input_string.count(".") != 3 #count the dots to determine if the length is correct; 3 dots means five values
    dot_separated_words = input_string.split(".")
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false if !is_a_number?(word) #explicitly require program to exit method and return false if this condition is not met.
    end
    return true
end

p dot_separated_ip_address_ans?("4.5.5") #false
p dot_separated_ip_address_ans?("4.5.5.5") #true
p dot_separated_ip_address_ans?("x.x.5.4") #false
p dot_separated_ip_address_ans?("xx.x.a.5") #false
p dot_separated_ip_address_ans?("4..5.4.5") #false
p dot_separated_ip_address_ans?("44.5.44.615") #true
p dot_separated_ip_address_ans?("4/.5?.44.5%") #false