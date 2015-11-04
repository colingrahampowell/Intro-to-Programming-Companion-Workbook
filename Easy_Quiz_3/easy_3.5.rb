#Tealeaf Introduction to Programming, Companion Workbook
#Easy Quiz 3, Question 5

#Commented text (but not the answer) taken from the question, for clarity.

#Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"

p statement.count("t") #My way...

p statement.scan("t").count #Tealeaf's way. Scan stores each match in an array. 