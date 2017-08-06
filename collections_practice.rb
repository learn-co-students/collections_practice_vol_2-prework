# your code goes here
def begins_with_r(array)
  array.each do |word|
    if !word.start_with?("r")
      return false
    end
  end
  return true
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
end

def count_elements(array)
  count_hash = []
  counter = 0
  if counter < array.uniq.length
    array.uniq.each do |word|
      count_hash.push({})
      count_hash[counter] = word
      count_hash[counter][:count] = array.count(word)
      counter = counter + 1
    end
  end
  count_hash
end

def merge_data(keys, data)
  counter = 0
  data.each do |element|
    element.each do |key, value|
      value.each do |attribute, value_two|
        keys[counter][attribute] = value_two
      end
      counter += 1
    end
  end
  keys
end

def find_cool(hash)
  empty_array = []
  hash.each do |element|
    element.each do |key, value|
      if value == "cool"
        empty_array.push(element)
        return empty_array
      end
    end
  end
end


def organize_schools(schools)
  empty_hash = {}
  nyc_array = []
  sf_array = []
  chicago_array = []
  schools.each do |key, value|
    schools[key].each do |attribute, city|
      if city == "NYC"
        nyc_array.push(key)
      elsif city == "Chicago"
        chicago_array.push(key)
      elsif city == "SF"
        sf_array.push(key)
      end
    end
  end
  empty_hash["NYC"] = nyc_array
  empty_hash["Chicago"] = chicago_array
  empty_hash["SF"] = sf_array

  empty_hash
end
