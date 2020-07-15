#begins_with_r Return true if every element of the tools array starts with an "r" and false otherwise.
#begins_with_r should return false if there's an element that does not begin with r
def begins_with_r(array)
  array.each do |element|
    if !element.downcase.start_with?("r")
      return false
    end
  end
  true
end

#contain_a return all elements that contain the letter 'a'
def contain_a(array)
  array.select do |element|
    element.downcase.include?("a")
  end
end

#first_wa Return the first element that begins with the letters 'wa'
def first_wa(array)
  array.find do |element|
    if element.is_a?(String)
      element.downcase.start_with?("wa")
    end
  end
end

#remove_non_strings remove anything that's not a string from an array
def remove_non_strings(array)
  array.select do |element|
    element.is_a?(String)
  end
end

def find_by_name(needle, haystack)
  haystack.find_index do |items|
    items[:name] == needle[:name]
  end
end

#count_elements count how many times something appears in an array
def count_elements(array)
  new_array = []
  array.each do |element|
    index = find_by_name(element, new_array)
    if index == nil
      element[:count] = 1
      new_array.push(element)
    else
      new_array[index][:count] += 1
    end
  end
  new_array
end

#merge_data combines two nested data structures into one
def merge_data(keys, data)
  keys.collect do |key_item|
    index = key_item[:first_name]
    data.each do |data_item|
      if data_item.include?(index)
        data_item[index].each do |key, value|
          key_item[key] = value
        end
      end
    end
    key_item
  end
end

#find_cool find all cool hashes
def find_cool(array)
  array.select do |element|
    element[:temperature].downcase == "cool"
  end
end

#organize_schools organizes the schools by location
def organize_schools(schools)
  locations = {}
  schools.each do |school|
    name = school[0]
    location = school[1][:location]
    if !locations.include?(location)
      locations[location] = []
    end
    locations[location].push(name)
  end
  locations
end
