# your code goes here
require 'pry'
def begins_with_r(array)
  array.each do |word|
    if !word.start_with?("r")
      return false
    end
  end
  
  return true
end 

def contain_a(array)
  array.select { |word| word.chars.include?("a") }
end 

def first_wa(array)
  array.find { |i| i[0..1] == 'wa'}
end

def remove_non_strings(array)
  array.reject { |word| word.is_a?(String) == false }
end 

def count_elements(array)
  new_array = []
  array.each do |element| 
    number = 0 
    number = array.count(element)
    new_hash = {count: number}
    element = element.merge(new_hash)
    new_array << element
  end
  new_array = new_array.uniq
  new_array
end 

def merge_data(keys, data)
  array = []
  keys.each do |person_name|
    name = person_name[:first_name]
    data.each do |person_data|
      if person_data[name] 
        merge_person = person_data[name]
        merge_person[:first_name] = name
        array << merge_person
      end
    end 
  end 
  array
end 

def find_cool(cool)
  new_array = []
  cool.each do |person|
    if person[:temperature] == "cool"
      new_array << person 
    end 
  end 
  new_array
end 

def organize_schools(schools)
  organize_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organize_schools[location] 
      organize_schools[location] << name
    else 
    organize_schools[location] = []
    organize_schools[location] << name 
    end 
  end 
  organize_schools
end 

