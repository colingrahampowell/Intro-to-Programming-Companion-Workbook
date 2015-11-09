#Tealeaf Introduction to Programming, Companion Workbook
#Advanced Quiz 1, Question 1

#What do you expect to happen when the greeting variable 
#is referenced in the last line of the code below?

if false
  greeting = “hello world”
end

greeting


#Two tricky issues at play:

#one, false evaluates to false, and no provision is given 
#in the conditional statement for the false case. greeting is not modified by the
#conditional statement.

#two, greeting evaluates to nil, and no 'undefined variable' exception is 
#thrown. the greeting variable is initialized (pointing to nil) 
#in the if statement, even if the code isn't executed. 