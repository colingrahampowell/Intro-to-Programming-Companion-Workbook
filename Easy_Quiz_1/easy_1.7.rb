#Tealeaf Introduction to Programming, Companion Workbook
#Easy Quiz 1, Question 7

#Commented text (but not the answer) taken from the question, for clarity.

#fun with gsub:

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

#This gives us a string that looks like a "recursive" method call:

#"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"

#If we take advantage of Ruby's Kernel#eval method to have it 
#execute this string as if it were a "recursive" method call

p eval(how_deep)

#what will be the result?

#ANS: 42 - eval evaluates string as code, and with number set to 2...

#((((2+8)+8)+8)+8)+8 = 42

p eval(how_deep).is_a?(Fixnum) #and it returns a Fixnum, not a string.
#very cool. 