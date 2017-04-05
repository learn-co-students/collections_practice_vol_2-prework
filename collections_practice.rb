def begins_with_r(array)
  array.all?{ |string| string.start_with?("r") }
end

def contain_a(array)
  array.select do |string|
    string.include?("a")
  end
end

def first_wa(array)
  array.find{ |el| el.class == String && el.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if{ |el| el.class != String }
end

def count_elements(array)
  uniq = array.uniq
  uniq.collect do |element|
    element[:count] = array.count(element)
  end
  return uniq
end

def merge_data(keys, data)
  hash = data[0]
  merged = keys
  merged.each do |element|
    element.merge!(hash[element[element.keys[0]]])
  end
  merged
end

def find_cool(array)
  array.select do |element|
    element[element.keys[1]] == "cool"
  end
end

def organize_schools(hash)
  organized = {}
  hash.each do |key, value|
    if organized.key?(value[value.keys[0]])
      organized[value[value.keys[0]]] << key
    else
      organized[value[value.keys[0]]] = Array.new << key
    end
  end
  organized
end
