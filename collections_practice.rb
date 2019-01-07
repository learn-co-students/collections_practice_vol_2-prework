# your code goes here
def begins_with_r(array)
    array.all? do |arr| #pushes all elements through
      arr.start_with?("r") #check if element starts with r
    end
  end

  def contain_a(array)
    new_array = [] #sets up new array
      array.each do |element| #pushes each element through
      if element.include?("a") #check if element includes a
        new_array <<  element #if so, pushes into new_array
      end
    end
    new_array #prints new_array
  end

def first_wa(array)
    array.each do |element| #pushes each element through
    if element.to_s.include? 'wa'
    return element
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |element| #pushes each element through
    if element.is_a?(String) #checks if element is a string
      new_array << element #if a string, pushes into new array
    end
  end
  new_array
end

def count_elements(hash)
  hash.each do |element|
    element[:count] = 0
    name = element[:name]
    hash.each do |elements|
      if elements[:name] == name
        element[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  array = []
  keys.each do |first_name|
    name = first_name[:first_name]
    data.each do |person_info, values|
      if person_info[name]
         new_person = person_info[name]
         new_person[:first_name] = name
         array << new_person
      end
    end
  end
  array
end

def find_cool(hash)
  array = []
  hash.each do |element|
    element.each do |key, value|
      if value == "cool"
        array << element
      end
    end
  end
  array
end

def organize_schools(hash)
  new_hash = {}
  hash.each do |key, value|
    value.each do |location, city|
      new_hash[city] ||= []
      new_hash[city] << key
    end
  end
  new_hash
end
