require "pry"
# your code goes here

def begins_with_r(array)
  array.all? { |i| i.start_with?("r")}
end

def contain_a(array)
array.select { |i| i.include?("a")}
end

def first_wa(array)
  array.each do |i|
    if i.to_s.start_with?("wa")
      return i
    end
  end
end

def remove_non_strings(array)
  array.delete_if { |i| !(i.is_a? String)}
end

def count_elements(array)
  new_array = array.uniq
  new_array.each do |key|
    key[:count] = array.count(key)
   end
 end

def merge_data(keys,values)
new_array = []
keys.each do |person_name|
  name = person_name[:first_name]
  values.each do |person_data|
    if person_data[name]
      merged_person = person_data[name]
      merged_person[:first_name] = name
      new_array << merged_person
    end
  end
end
return new_array
end

def find_cool(array)
  cool = []
  array.each do |hash|
  hash.each do |key,value|
    if value == "cool"
      cool << hash
  end
end
end
return cool
end

def organize_schools(array)
locations = {}
  array.each do |school, loc_hash|
    city = loc_hash[:location]
    if locations[city].nil?
      locations[city] = [school]
    else
      locations[city] << school
    end
  end
  return locations
end
