require "pry"
# your code goes here

def begins_with_r(array)
	return_value = true
	array.each {|word| return_value = false if word[0] != "r"}
	return_value
end

def contain_a(array)
	array.select{|word| word.include? "a"}
end

def first_wa(array)
	array.find {|word|
		next if word.is_a?(Symbol)
	    word.start_with?("wa")}
end
	
def remove_non_strings(array)
	return_array = []
	array.collect {|element| 
		return_array << element if element.is_a?(String)}
	return_array
end

def count_elements(array)

  return_array = []
  counts = Hash.new 0
  array.each do |value|
    counts[value] += 1
  end
  counts.each do |key, value|
    return_array << key.merge({count: value})
  end
  return_array 
end

def merge_data(keys, data)
  return_array = []
  keys.each_with_index do |key, index|
    data.each do |info|
      return_array << key.merge(info.values[index])
    end
  end
  return_array
end

def find_cool (array) 
  array.each do |data|
    data.each do |key, info|
      if info == "cool"
        return [data]
      end
    end
  end
end

def organize_schools(schools)
  # data input as {school => {location: (loc)}}
  organized_schools = {}
  schools.each do |school, location|
    if organized_schools.keys.include?(location.values.first)
      organized_schools[location.values.first] << school
    else
      organized_schools[location.values.first] = [school]
    end
  end
  organized_schools
end

