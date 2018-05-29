def begins_with_r(array)
  truthiness = true
  array.each do |element|
    if element.start_with?("r") == false
      truthiness = false
    else
      nil
    end
  end
  truthiness
end

def contain_a(array)
  return_array = []
  array.each do |element|
    if element.include?("a") == true
      return_array.push(element)
    end
  end
  return_array
end

def first_wa(array)
  return_array = []
  array.each do |element|
    if element.to_s.start_with?("wa")
      return_array.push(element)
    end
  end
  return_array[0].to_s
end

def remove_non_strings(array)
  return_array = []
  array.each do |element|
    if element == element.to_s
      return_array.push(element)
    end
  end
  return_array
end

def count_elements(array)
  return_array = []
  count = 1
  array.each do |element|
    element.each do |k, name|
      if return_array.include?({k => name, :count => count}) == false
        return_array.push({k => name, :count => count})
      else
        return_array.delete_if{ |element| element == {k => name, :count => count}}
        return_array.push({k => name, :count => count+1})
      end
    end
  end
  return_array
end

def merge_data(keys, data)
  new_array = []
  data.each do |element|
    element.each do |k, v|
      new_array.push(data[0][k])
    end
  end
  count = 0
  while count < new_array.length
    keys[count].merge!(new_array[count])
    count += 1
  end
  keys
end

def find_cool(array)
  new_array = []
  array.each do |element|
    if element[:temperature] == "cool"
      new_array.push(element)
    end
  end
  new_array
end

def organize_schools(hash)
  new_hash = {}
  hash.each do |school, v|
    v.each do |title, location|
      if new_hash[location] == nil
        new_hash[location] = [school]
      else
        new_hash[location].push(school)
      end
    end
  end
  new_hash
end
