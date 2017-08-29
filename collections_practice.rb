# your code goes here
def begins_with_r(array)
  if array.any? do |item|
    item[0] != "R" && item[0] != "r"
  end
    return false
  end
  return true
end

def contain_a(array)
  array.select do |item|
    item.include?("a") || item.include?("A")
  end
end

def first_wa(array)
  array.find do |item|
    item.to_s.start_with?("wa") || item.to_s.start_with?("Wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    item != item.to_s
  end
end

def count_elements(array)
  result = []
  array.each do |element|
    element[:count] = 1
  end
  array.each do |element|
    if !result.include?(element)
      result << element
    else
      index = result.index(element)
      result[index][:count] += 1
    end
  end
  result
end

def merge_data(collection1, collection2)
  result = []
  collection1.each do |element| #firstname: string hash
    hash = element
    collection2[0].each do |keyname, valueattributes| #"namestring" => valuehash
      if hash.values.include?(keyname)
        valueattributes.each do |key2, value2|
          hash[key2] = value2
        end
      end
    end
    result << hash
  end
  result
end

def find_cool(collection)
  (collection.collect do |hash|
    if (hash[:temperature] == "cool")
      hash
    end
  end).delete_if do |element|
    element == nil
  end
end

def organize_schools(collection)
  result = {}
  collection.each do |schoolname, location_hash|
    if (result[location_hash[:location]] == nil)
      result[location_hash[:location]] = [] << schoolname
    else
      result[location_hash[:location]] << schoolname
    end
  end
  result
end
