# your code goes here
def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element.is_a?(String) && element.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    !element.is_a?(String)
  end
end

def count_elements(array)
  new_array = array.uniq
  new_array.each do |element|
    element[:count] = array.count(element)
  end
  new_array
end

def merge_data(array1, array2)
  new_array = []
  i = 0
  while i < array1.length
    new_array << array1[i].merge(array2[0].values[i])
    i += 1
  end
  new_array
end

def find_cool(array)
  array.select do |element|
    element[:temperature] == "cool"
  end
end

def organize_schools(array)
  new_hash = {}
  array.each do |element, value|
    if new_hash[value[:location]]
      new_hash[value[:location]] << element
    else
      new_hash[value[:location]] = []
      new_hash[value[:location]] << element
    end
  end
  new_hash
end  