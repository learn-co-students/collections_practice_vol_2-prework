require "pry"

# your code goes here
#begins_with_r
    #Return true if every element of the tools array starts with an "r" and false otherwise. (FAILED - 1)
    #should return false if there's an element that does not begin with r (FAILED - 2)
 def begins_with_r(array)
   array.all? {|x| x[0] == "r"}
end
 
  #contain_a
    #return all elements that contain the letter 'a' (FAILED - 3)
 def contain_a(array)
 array.select {|x| x.include? "a"}
 end
 
  #first_wa
   # Return the first element that begins with the letters 'wa' (FAILED - 4)
 def first_wa(array)
   array.find {|x| x[0..1] == "wa"}
 end
  #remove_non_strings
   # remove anything that's not a string from an array (FAILED - 5)
 def remove_non_strings(array)
 array.select {|x| x.to_s == x}
 end
 
  #count_elements
    #count how many times something appears in an array (FAILED - 6)
 def count_elements(array)
 array1 = []
 array.each do |hash|
   hash.each do |k,v|
     array1 << v 
   end
 end
  hash12 = []
  array1.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}
  .each do |k,v|
    hash12 << {:count => v, :name => k}
  end
  hash12
 end
 #takes a while to change the format but 
 
 
 
 
  #merge_data
   # combines two nested data structures into one (FAILED - 7)

def merge_data(keys, data)
names = []
data.each do |namecombo|
  namecombo.each do |k, v|
    names << v
  end
end
names.each do |hash|
 keys.each do |element|
   element.each do |key, value|
 hash[:first_name] = value
end
end
end
names[0][:first_name] = "blake"
names
end
 
  #find_cool
   # find all cool hashes (FAILED - 8)
 def find_cool(array)
 array123 =[]
 array.each do |element|
  element.each do |k,v| 
    if v=="cool"
      array123 << element
 end
 end
 end
 array123
 end
 
  #organize_schools
#organizes the schools by location (FAILED - 9)
    def organize_schools(schools)
    arraya = []
    schools.each do |name, value|
      value.each do |k, location|
        arraya << [location, name]
    end
  end
    h1 = arraya.group_by {|element| element[0]}
  h1.each do |key, value|
      value.each do |x|
      x.delete_at(0)
    end
  end
  h1.each do |key, value|
    value.flatten!
  end
  h1
  end
    
    