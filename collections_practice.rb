require 'pry'
# your code goes here
def begins_with_r(arr)
  result = true
  arr.each do |x|
    if x.start_with?("r")
      result = true
    else
      return false
    end
  end
  return result
end

def contain_a(arr)
  arr.select {|x| x.include?("a")}
  # result = []
  # arr.each do |x|
  #   if x.include?("a")
  #     result << x
  #   end
  # end
  # return result
end

def first_wa(arr)
  arr.select {|x| x.to_s.start_with?("wa")}.first
  # arr.each do |key|
  #   if key.to_s.start_with?("wa")
  #     return key
  #   end
  # end
end

def remove_non_strings(arr)
  arr.delete_if {|x| x.class != String}
end

def count_elements(arr)
  new_arr = []
  names = arr.collect {|x| x.values}
  name_list = names.uniq
  i = 0
  while i < name_list.length
    count = 0
    new_hash = {}
    arr.each do |x|
      if x.values == name_list[i]
        count += 1
      end
    end
    new_hash[:name] = name_list[i][0]
    new_hash[:count] = count
    new_arr << new_hash
    i += 1
  end
  return new_arr
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |x|
    data.each do |y|
      x = y[x.values[0]].merge(x)
      merged_data << x
    end
  end
  return merged_data
end

def find_cool(arr)
  result = []
  arr.each do |x|
    if x[:temperature] == "cool"
      result << x
    end
  end
  return result
end

def organize_schools(hash)
  location_arr = []
  organized_schools = {}
  hash.each do |key, value|
    location_arr << value[:location]
  end
  location_list = location_arr.uniq
  i = 0
  while i < location_list.length
    school_list = []
    hash.each do |key, value|
      if value[:location] == location_list[i]
        school_list << key
      end
      organized_schools[location_list[i]] = school_list
    end
    i += 1
  end
  return organized_schools
end
