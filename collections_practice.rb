# your code goes here
require 'pry'

 def begins_with_r(array)
   array.each do |string|
     if !string.start_with?("r" || "R")
       return false
     end
   end
   true
 end

 def contain_a(array)
   array.select do |string|
     string.include?("A".downcase)
   end
 end

 def first_wa(array)
   new_arr = []
   array.each do |string|
     if string.to_s.include?("wa".downcase)
       new_arr.push(string.to_s)
     end
   end
   new_arr[0]
 end

 def remove_non_strings(array)
   array.select do |element|
     element.class == String
   end
 end

 def count_elements(array)
   i = 0
 end
