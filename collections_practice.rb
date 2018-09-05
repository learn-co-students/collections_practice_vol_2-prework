# your code goes here
# begins_with_r
#   Return true if every element of the tools array starts with an "r" and false otherwise.
#   should return false if there's an element that does not begin with r
def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
    end
  end
  return true
end

# contain_a
#   return all elements that contain the letter 'a'
def contain_a(array)
  array.select do |word|
    word.include?"a"
  end
end

# first_wa
#   Return the first element that begins with the letters 'wa'
def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

# remove_non_strings
#   remove anything that's not a string from an array
def remove_non_strings(array)
  array.select do |word|
    word.class == String
  end
end

# count_elements
#   count how many times something appears in an array
def count_elements(array)
  names = []
  array.each do |hash|
    names << hash[:name]
  end
  x = array.each do |hash|
    hash[:count] = names.count(hash[:name])
  end
  x.uniq
end

# merge_data
#   combines two nested data structures into one
def merge_data(data1, data2)
  array = []
  data2[0].each do |name, attributes|
    attributes[:first_name] = name
    array << attributes
  end
  array
end

# find_cool
#   find all cool hashes
def find_cool(hashes)
  cool_hashes = []
  hashes.each do |hash|
    if hash[:temperature] == "cool"
      cool << hash
    end
  end
  cool_hashes
end

# # organize_schools
# #   organizes the schools by location
def organize_schools(schools)
  schools_by_location = {}
  schools.each do |name, location_hash|
    if schools_by_location[location_hash[:location]].nil?
      schools_by_location[location_hash[:location]] = [name]
    else
      schools_by_location[location_hash[:location]] << name
    end
  end
  schools_by_location
end
