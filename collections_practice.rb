def begins_with_r(array)
  array.all? do |word|
    word.start_with? "r"
  end
end 

def contain_a(array)
  x = []
  array.each do |word|
    if word.include? "a"
      x << word
    end 
  end
  x
end 

def first_wa(array)
  array.find do |word|
    word.to_s.start_with? "wa"
  end 
end

def remove_non_strings(array)
  x = []
  array.delete_if do |x|
    x.class != String
  end
end

def count_elements(array)
  array.each do |element|
    element[:count] = 0 
    name = element [:name]
    array.each do |data|
      if data[:name] == name
        element[:count] += 1 
      end
    end
  end
    return array.uniq
end

def merge_data(keys, data)
  array = []
  keys.each do |key_hash|
    data.each do |data_hash|
      data_hash.each do |x, y|
        if key_hash.values.join == x
          array << key_hash.merge(y)
        end
      end
    end
  end
  array
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(schools)
  school_locations = {}
  schools.each do |key, value|
    locations = value[:location]
    if school_locations[locations]
      school_locations[locations] << key
    else
      school_locations[locations] = []
      school_locations[locations] << key
  end
end
school_locations
end
