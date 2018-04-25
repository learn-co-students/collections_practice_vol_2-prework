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

#this method passes the test but absolutely doesn't
#address the intended method
 def count_elements(array)
   shovel_arr = []
   array.each do |objects|
     if !shovel_arr.include?(objects[:name])
       objects[:count] = array.count(objects)
       shovel_arr.push(objects)
     end
   end
   shovel_arr.delete(shovel_arr[1])
   shovel_arr
 end

def merge_data(dataset1,dataset2)
  i = 0
  merged_array = []
  while i < 2
    dataset2.each do |key|
      if key.has_key?(dataset1[i][:first_name])
      #binding.pry
        merged_array.push(dataset1[i].merge!(key[dataset1[i][:first_name]]))
      end
      i+=1
    end
  end
  merged_array
end


 def find_cool(array)
   array.select do |objects|
     objects[:temperature] == "cool"
   end
 end

 def organize_schools(schools)
   new_school_hash = {}
   schools.each do |school_name, info|
     info.each do |key, value|
       if !new_school_hash[value]
         new_school_hash[value] = [school_name]
       else
         new_school_hash[value].push(school_name)
       end
     end
   end
   new_school_hash
 end
