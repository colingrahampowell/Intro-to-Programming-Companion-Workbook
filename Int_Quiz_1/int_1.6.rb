#Tealeaf Introduction to Programming, Companion Workbook
#Intermediate Quiz 1, Question 6

#Alyssa was asked to write an implementation of a rolling buffer. Elements are added 
#to the rolling buffer and if the buffer becomes full, then new elements that are added 
#will displace the oldest elements in the buffer.

#She wrote two implementations saying, "Take your pick. Do you like << or + for modifying 
#the buffer?". Is there a difference between the two, other than what operator she chose to 
#use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

#rolling_buffer1 modifies the input array (mutates the caller), and rolling_buffer2 does not.
#rolling_buffer2 saves the buffer array as a separate variable from input_array. 

arr1 = [1,2,3,4]
arr2 = [1,2,3,4]

p rolling_buffer1(arr1, 4, 6)
p rolling_buffer2(arr2, 4, 6) 

puts "----------"

p arr1
p arr2