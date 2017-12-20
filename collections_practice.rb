# your code goes here
def begins_with_r(array)
  if array.any? { |item| item[0] != "r" }
    false
  else
    true
  end
end

def contain_a(array)
  array.select do |item|
    item.include?("a")
  end
end

def first_wa(array)
  array.find do |item|
    item[0] + item[1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    item.class != String
  end
end

def count_elements(array)
  result = []
  names = array.collect do |x|
    x[:name]
  end
  done_names = []
  names.each do |name_|
    if !done_names.include?(name_)
      count_ = names.count(name_)
      result << {name: name_, count: count_}
      done_names << name_
    end
  end
  result
end

def merge_data(data1, data2)
  result = []
  merging_set = data2
  data1_values = data1.collect { |x| x[:first_name] }
  merging_set.each do |hash|
    hash.each do |name, values|
      if data1_values.include?(name)
        values[:first_name] = name
      end
    end
  end
  merging_set.each do |hash_|
    hash_.each do |name_, values_|
      result << values_
    end
  end
  result
end

def find_cool(array)
  result = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      result << hash
    end
  end
  result
end

def organize_schools(schools)
  result = {}
  flattened_locations = {}
  locations = schools.each do |school, hash|
    flattened_locations[school] = hash[:location]
  end
  done_cities = []
  flattened_locations.each do |school, city|
    if !done_cities.include?(city)
      result[city] = [school]
      done_cities << city
    else
      result[city] << school
    end
  end
  result
end
