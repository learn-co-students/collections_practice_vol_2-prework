require 'pry'


def begins_with_r(array)
  array.each do |v|
    if v.start_with?("r") == false 
      return false
  end
end
  return true
end

def contain_a(array)
  a_array = []
  array.each do |v|
    if v.include?("a")
      a_array << v 
      end 
    end 
  a_array     
end

def first_wa(array)
  array.each do |v|
    if v.to_s.start_with?("wa") 
      return v
    end 
  end
end 

def remove_non_strings(array)
  string_array = []
  array.each do |v|
    if v.class == String
      string_array << v
    end 
  end 
  return string_array
end 

def count_elements(array)
  new_array = array.uniq
  new_array.each do |person|
    counter = array.count(person)
    person[:count] = counter
  end
  return new_array
end 

def merge_data(keys, data)
  return_array = []
  keys.each do |person_name|
    name = person_name[:first_name]
  data.each do |person_info|
    if person_info[name]
      merge = person_info[name]
      merge[:first_name] = name
      return_array << merge
      end
    end 
  end
  return_array
end 

def find_cool(array)
  return_array = []
  array.each do |person_info|
    if person_info[:temperature] == "cool"
      return_array << person_info
    end
  end
  return_array
end 

def organize_schools(array)
  sorted_hash = {}
  repeat = nil
  array.each do |school, name|
    location = name[:location]
    sorted_hash[location] ||= []
    sorted_hash[location] << school
  end 
  sorted_hash
end 



