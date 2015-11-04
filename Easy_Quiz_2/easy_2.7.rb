#Tealeaf Introduction to Programming, Companion Workbook
#Easy Quiz 2, Question 7

#Commented text (but not the answer) taken from the question, for clarity.

#See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.split(' ').include?("Dino") #returns false

#Tealeaf's Way:

p advice.match('Dino') #returns nil
#probably more robust in that this would catch possessive cases like "Dino's"