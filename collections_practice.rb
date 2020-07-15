# your code goes here
def begins_with_r(array)
  array.all?{|value| value[0] == "r"}
end

def contain_a(array)
  array.select{|value| value.include?("a")}
end

def first_wa(array)
  array.find{|value| value[0] == "w" && value[1] == "a"}
end

def remove_non_strings(array)
  array.select{|value| value.class == String}
end

def count_elements(array)
  count_array = []
counts = array.inject(Hash.new(0)){|hash, value| hash[value] += 1; hash}
counts.each{|key, value| count_array.push(key.merge({:count => value}))}
  return count_array
end

def merge_data(array1, array2)
  merged_data = []
  i = 0
  while i < array1.length
    merged_data.push(array1[i].merge(array2[0][array2[0].keys[i]]))
    i += 1
  end
  return merged_data
end

def find_cool(array)
  array.select{|value| value[:temperature] == "cool"}
end

def organize_schools(hash)
new_hash = {}
hash.each{|key, value| new_hash[value[:location]] = []}
hash.each{|key, value| new_hash[value[:location]].push(key)}
return new_hash
end

  
