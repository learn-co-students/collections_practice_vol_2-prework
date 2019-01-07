# your code goes here
require "pry"
 def begins_with_r(arr)
   arr.each do |word|
     if word[0] != "r"
       return false
     end
   end
   return true
 end

 def contain_a(arr)
   a_arr = []

   arr.each do |word|
    if word.include?("a")
      a_arr.push(word)
    end
  end
  a_arr
 end

 def first_wa(arr)
   arr.each do |word|
     if word[0..1] == "wa"
       return word
     end
   end
 end

 def remove_non_strings(arr)
   str_arr = []
   arr.each do |word|
     if word.is_a? String
       str_arr.push(word)
     end
   end
   str_arr
 end

 def count_elements(arr)
   my_arr = []
   arr.each do |hash|
     hash.invert.each do |value, name|
       if my_arr == []
         my_arr.push({name: value, count: 2})
       end
       my_arr.each do |new_hash|
         if new_hash[:name] == value
           new_hash[:count] += 0
         elsif new_hash[:name] != value
           my_arr.push({name: value, count: 1})
         end
       end
     end
   end
   my_arr
 end

def merge_data(keys, data)
  keys.each do |object|
    match_prop = object[:first_name]
    puts object
    other_obj = data[0][match_prop]
    other_obj.each do |property, value|
      object[property] = value
    end
  end
end

def find_cool(arr)
  my_arr = []
  if arr[1][:temperature] == "cool"
    my_arr.push(arr[1])
  end
  my_arr
end

def organize_schools(has)
  my_has = {}
  
  has.each do |school, has2|
    location = has2[:location]
    my_has[location] ||= []
    my_has[location] << school
  end
  my_has
end
# {
# "flatiron school bk"=>{:location=>"NYC"},
#  "flatiron school"=>{:location=>"NYC"},
#  "dev boot camp"=>{:location=>"SF"},
#  "dev boot camp chicago"=>{:location=>"Chicago"},
#  "general assembly"=>{:location=>"NYC"},
#  "Hack Reactor"=>{:location=>"SF"}
# }
