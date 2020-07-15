require 'pry'

def begins_with_r(array)
  array.all? do |tool|
    tool.start_with?("r")
  end
end

def contain_a(array)
  array.select do |string|
    string.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.select do |element|
    element.is_a?(String)
  end
end

def count_elements(array)
  hash = Hash.new(0)
  return_array = []
  array.each do |element|
    hash[element] += 1
  end
  hash.each do |element, value|
    return_array << {name: element[:name], count: value}
  end
  return_array
end


def merge_data(keys, data)
 array = []
 merged = nil
 keys.each do |person|
   name = person[:first_name]
   data.each do |attributes|
     if attributes[name]
       merged = attributes[name]
       merged[:first_name] = name
       array << merged
     end
   end
 end
 array
end


def find_cool(array)
  return_array = []
  array.each do |hash|
    if hash.keys.include?("cool") || hash.values.include?("cool")
      return_array << hash
  end
end
return_array
end

def organize_schools(hash)
  return_hash = {}
  hash.each do |name, location_info|
    city = location_info[:location]
    if return_hash[city]
      return_hash[city] << name
    else
      return_hash[city] = []
      return_hash[city] << name
    end
  end
  return_hash
end
