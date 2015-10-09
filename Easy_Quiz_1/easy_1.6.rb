#Tealeaf Introduction to Programming, Companion Workbook
#Quiz 1, Question 6

#given this string:

famous_words = "seven years ago..."

#show two different ways to put the expected "Four score and " in front of it.
#maaaaaan, I'm gonna show four.

puts famous_words.insert(0, "Four score and ")

famous_words = "seven years ago..." #reset value

puts famous_words.prepend("Four score and ")

#weird way?

famous_words = "seven years ago...." #reset value, again

puts "Four score and ".concat(famous_words)

#obvious way

puts "Four score and #{famous_words}"
