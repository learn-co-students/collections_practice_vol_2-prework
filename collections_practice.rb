require 'pry'
def begins_with_r(tools)
  i = 0
  while i < tools.length
    if tools[i].split("").first != "r"
      return false
    else
      i += 1
    end
  end
  return true
end

def contain_a(array)
  new_array = []
  array.each do |item|
    if item.include?("a")
      new_array << item
    end
  end
  return new_array
end

def first_wa(array)
  array.each do |item|
    if item.class == String
      new_array = item.split("")
      if new_array[0] == "w" and new_array[1] == "a"
        return item
      end
    end
  end
end

def remove_non_strings(array)
  array.each do |item|
    if item.class != String
      array = array - [item]
    end
  end
  return array
end

def count_elements(array)
new_array = []
  array.each do |item|
    new_array << { item.keys.join.to_sym => item.values.join, :count => array.count(item) }
  end
  return new_array.uniq
end

def merge_data(keys, data)
  new_array = keys
  new_array[0].merge!(data[0].values[0])
  new_array[1].merge!(data[0].values[1])
  return new_array
end


def find_cool(array)
new_array = []
  array.each do |hash|
    if hash.values.include?("cool")
      new_array << hash
    end
  end
  return new_array
end

def organize_schools(schools)
  array = []
  hash = {}
  schools.each do |school, location|
    location.each do |key, value|
      array << value
      array = array.uniq

    end
    hash = Hash[array.collect { |item| [item, []] } ]
  end
  schools.each do |school, location|
    location.each do |key, value|
      #binding.pry
      hash[value] << school
    end
  end
  return hash
end
