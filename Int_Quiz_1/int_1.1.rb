#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 1, Question 1

#Commented text (but not the answer) taken from the question, for clarity.

#Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

#For this exercise, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

#The Flintstones Rock!
# The Flintstones Rock!
#  The Flintstones Rock!

string = "The Flintstones Rock!"

#My way:
  10.times do 
    p string
    string.prepend(" ")
  end 

#Tealeaf's way:
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

