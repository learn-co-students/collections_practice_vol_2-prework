def begins_with_r(array)
  array.all? {|element| element.start_with?("r")}
end

def contain_a(array)
  array.keep_if {|element| element.include? "a"}
end

def first_wa(array)
  array.detect {|element| element.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.keep_if {|element| element.kind_of?(String)}
end

def count_elements(array)
  array.each do |element|
    element[:count] = 0
    array.each do |hash|
      element[:count] += 1 if hash[:name] == element[:name]
    end
  end
  array.uniq
end

def merge_data(keys, data)
  data[0].values.map.with_index {|values, index| keys[index].merge(values)}
end

def find_cool(array)
  array.select do |element|
    element[:temperature] == "cool"
  end
end

def organize_schools(schools)
  new_hash = schools.group_by {|school, city| city[:location]}
  new_hash.map {|key, value| new_hash[key] = value.flatten(1)}
  new_hash.map {|k, v| new_hash[k] = v.keep_if {|item| item.kind_of?(String)}}
  new_hash
end
