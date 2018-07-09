def begins_with_r(array)
  array.all? {|element| element[0] == "r" }
end

def contain_a(array) 
  array.select {|word| word.include? "a"}
end

def first_wa(array)
  array.find { |word| (word[0] == "w" && word[1] == "a") }
end

def remove_non_strings(array)
  array.select {|element| element.is_a? String }
end

def count_elements(array)
arr= []
hash= Hash.new(0)           

# iterate through array and count times same key present, output format is { {:name=>"blake"}, 2 }
    array.each {|key| hash[key] += 1 }

hash2 = Hash.new(0)

# iterate through hash and add the :count key to create the desired format [{:name=>"blake", :count => 2}] to put into arr.
    hash.each { |key, value| hash2=key; hash2[:count] = value; arr << hash2; hash2 = {}; }
arr
end


def merge_data(keys, data)
  #iterates through keys and data's arguments and combines them based on matching details, to output desired array format:
  # [{ :first_name => "blake", :awesomeness => 10, :height => "74", :last_name => "johnson" }, .....etc
  
  arr=[]
  hash = {}
  keys.each { |key| key.each { |k, first_name| data.each {|key|                 
          key.each {|name, all_traits|
            if name == first_name                           
              hash[k] = name                              
              all_traits.each {|title_trait, value_trait| hash[title_trait] = value_trait }
              arr << hash                                   
            end
            hash = {}  }}}}
  arr
end


def find_cool(cool)
  #iterates through the array and searches for object where key is temperature and value is cool, then returns that object.
  
  cool.each { |a| a.each {|key, value| return[a] if key == :temperature && value == "cool" } }
end


def organize_schools(schools)
hash = {}

#Iterates through the levels of the schools array.
  #if hash empty, with key = location eg "NYC", and value = an array with the school name eg "Flatiron School".
  #if next iteration picks up key = existing location, then adds school name to value array of for that key.
  #Else creates new key with value of array.

  schools.each {|school, loc_obj| 
    loc_obj.each {|loc, value|  
      if hash.empty?
        hash[value] = [school]
      elsif hash.key?(value)
        hash[value] << school 
      else 
        hash[value] = [school]
      end
    } }
hash
end


  