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
  name_array = []
  count = 0

  array.each do |element|
    return_array.push(element.merge!(:"count" => count))
    element.each do |k, name|
      if name_array.any?(name) == false
      count += 1
      return_array.push(element.merge!(:"count" => count))
    end
  end
  return_array
end
