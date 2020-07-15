# your code goes here
require 'pry'

def begins_with_r(tools)
  tools.all? do |tool|
    tool.chars.first == "r"
  end
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.chars.include? "a"
      new_array << element
    end
  end
  new_array
end

def first_wa(array)
  array.find do |element|
    element[0..1] == "wa"
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    new_array << element if element.class==String
  end
  new_array
end

def count_elements(array)
  elements = array.uniq
  hash_array = []
  elements.each do |element|
    number = 0
    array.each do |value|
      number+=1 if value==element
    end
    hash_array << {:name => element[:name], :count => number}
  end
  hash_array
end

def merge_data(keys, data)
  merged_data = []
  data.each do |person_data|
    person_data.each do |first_name, characteristics|
      characteristics[:first_name] = first_name
      merged_data << characteristics
    end
  end
  merged_data
end

def find_cool(array_of_hashes)
  array_of_hashes.each do |people_hashes|
    return [people_hashes] if people_hashes[:temperature]=="cool"
  end
end

def organize_schools(schools_hash)
  organized_schools = {}
  schools.each do |school, location_hash|
    if !organized_schools.keys.include? location_hash[:location]
      organized_schools[location_hash[:location]] = [school]
    else
      organized_schools[location_hash[:location]] << school
    end
  end
  organized_schools
end
