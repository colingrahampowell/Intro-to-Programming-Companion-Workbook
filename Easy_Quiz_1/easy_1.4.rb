#Tealeaf Introduction to Programming, Companion Workbook
#Quiz 1, Question 4

numbers = [1, 2, 3, 4, 5]

#compare .delete with .delete_at
#note that both modify array in place

numbers.delete_at(1) #deletes at index 1
p numbers

numbers = [1,2,1,1,3,4,5]

numbers.delete(1) #deletes values that equal 1 (all of 'em)
p numbers