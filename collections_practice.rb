require 'pry'

def begins_with_r(array)
  array.each do |string|
    if string[0] != 'r'
      return false
    end
  end
  return true
end

def contain_a(array)
  new_array = []
  array.each do |string|
    if string.include?('a')
      new_array << string
    end
  end
  new_array
end

def first_wa(array)
  array.each do |string|
    if string[0..1] == 'wa'
      return string
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |item|
    if item.is_a?(String)
      new_array << item
    end
  end
  new_array
end

#def count_elements(array)
#  array.group_by(&:itself).map{|key, value| key.merge(count: value.length)}
#end

def count_elements(array)
  i = 0
  count = 0
  new_array = []
  while i < array.size
    j = 0
    while j < array.size
      if array[i] == array[j]
        count += 1
      end
      j += 1
    end
    array[i][:count] = count
    new_array << array[i]
    count = 0
    i += 1
  end

  i = 0 # Delete duplicate names after finding the count -- very messy code
  j = 1
  while i < new_array.size
    while j < new_array.size
      if new_array[i][:name] == new_array[j][:name]
        new_array.delete_at(j)
      end
      j += 1
    end
    i += 1
  end
  new_array
end

def merge_data(keys, data)
  merged = []
  keys.each do |name_hash|
    name_hash.each do |name_key, name|
      data.each do |data_hash|
        data_hash.each do |data_key, info|
          if name == data_key
            holder_hash = name_hash.merge(info)
            merged.push(holder_hash)
          end
        end
      end
    end
  end
merged
end

def find_cool(cool)
  found = []
  cool.each do |name_hash|
    if name_hash[:temperature] == "cool"
      found << name_hash
    end
  end
  found
end

def organize_schools(schools)
  organized = {}
  schools.each do |name, value_hash|
    value_hash.each do |location_key, city|
      if !organized.keys.include?(city)
        organized[city] = []
      end
      organized[city] << name
    end
  end
  organized
end
