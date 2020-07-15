
# your code goes here



def begins_with_r(array)
  i = 0
  count = 0
  while i < array.length do
  if array[i].start_with? "r"
  count = count + 1
  end
  i = i + 1
  end
  if count === array.length
  return true
  else
  return false
  end
end

def contain_a(array)
  has_a = []
  i = 0
  while i < array.length do
  if array[i].include? "a"
  has_a.push(array[i])
  end
  i = i + 1
  end
  return has_a
end

def first_wa(array)
  i = 0
  while i < array.length do
  if array[i].to_s.include? "wa"
  return array[i]
  end
  i = i + 1
  end
end

def remove_non_strings(array)
  array.each do |element|
  if element != element.to_s
  array.delete(element)
  end
  end
  array.each do |element|
  if element != element.to_s
  array.delete(element)
  end
  end
  return array
end


def count_elements(array)
  counts = Hash.new 0
  array.each do |word|
  counts[word] += 1
  end
  values = counts.values
  keys = counts.keys
  i = 0
  while i < keys.length do
  keys[i][:count] = values[i]
  keys[i][:count] = values[i]
  i = i + 1
  end
  return keys
end


def merge_data(keys, data)

  merge = []
  merge_edit = []

  # first iterate through the information to organize it sequentially in a new array
  # tried to create the hash during iteration, but was receiving an error message
  # and learned that is not a possibility in ruby
  keys.each do |name_element|
  name_element.each do |name_key, name|
  data.each do |data_element|
  data_element.each do |name_key1, info|
    if name == name_key1
    merge.push(name_element, info)
  end
  end
  end
  end
  end

  # once we have a new array that is matched up correctly I merged the elements
  # and pushed them into a new array
  i = 0
  k = 1
  while k < merge.length do
    merge_edit.push(merge[i].merge!(merge[k]))
    i = i + 2
    k = k + 2
  end

  return merge_edit
end


def find_cool(cool)
  cool_array = []
  cool.each do |cool_element|
  cool_element.each do |key, value|
   if key == :temperature && value == "cool"
   cool_array.push(cool_element)
  end
  end
  end
  return cool_array
end



def organize_schools(schools)

  nyc = []
  chicago = []
  sf = []
  school_filter = {}

  schools.each do |name, location_info|
  location_info.each do |location_key, location|
    if location == "NYC"
    school_filter[location] = nyc.push(name)
    end
    if location == "SF"
    school_filter[location] = sf.push(name)
    end
    if location == "Chicago"
    school_filter[location] = chicago.push(name)
    end
    end
    end
    return school_filter
end
