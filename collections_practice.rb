require 'pry'

# your code goes here
def begins_with_r (array)
  array.each do |element|
    return false if element[0] != "r"
  end
  true
end

def contain_a(array)
  result ||= []
  array.each do |element|
    result << element if element.to_s.downcase.include? 'a'
  end
  result
end

def first_wa (array)
  array.each do |element|
    return element if element.to_s.downcase.include? "wa"
  end
end

def remove_non_strings (array)
  array.delete_if {|element| element.to_s != element}
end

def count_elements (array)
  unique_elements = array.uniq
  unique_elements_count = []
  unique_elements.each_with_index do |unique_element, index|
    array.each do |array_element|
      unique_elements_count[index] ||= 0
      unique_elements_count[index] += 1 if unique_element == array_element
    end
    unique_element[:count] = unique_elements_count[index]
  end
  unique_elements
end

def merge_data(keys, data)
  keys.each do |first_name_hash|
  	data.each do |information_hash|
  		information_hash.each do |first_name, information|
  			if first_name_hash[:first_name] == first_name
  				information.each do |attribute, data|
  					first_name_hash[attribute] = data
  				end 
  			end
  		end
  	end
  end
end

def find_cool(parameter)
  cool_hashes = []
  parameter.each do |hash|
    cool_hashes << hash if hash.values.include? "cool"
  end
  cool_hashes
end

def organize_schools (schools)
  locations = schools.collect {|school, location_hash| location_hash[:location]}.uniq
  organized_schools = {}
  locations.each do |location|
    organized_schools[location] ||= []
    schools.each do |school, location_hash|
      organized_schools[location] << school if location_hash[:location] == location 
    end
  end
  organized_schools
end






