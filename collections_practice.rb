def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    elem = element.to_s
    elem.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    !element.is_a?(String)
  end
end

def count_elements(array)
  array.uniq do |original_hash|
    name = original_hash[:name]
    original_hash[:count] = array.count { |hash| hash[:name] == name }
  end
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |name|
    new_name = name[:first_name]
    data.each do |info|
      if info[new_name]
        merge_name = info[new_name]
        merge_name[:first_name] = new_name
        merged_data << merge_name
      end
    end
  end
  merged_data
end

def find_cool(hashes)
  array = []
  hashes.each do |element|
    if element[:temperature] == "cool"
      array << element
    end
  end
  array
end

def organize_schools(schools)
  school_locations = {}
  schools.each do |name, location|
    location_name = location[:location]
    if school_locations[location_name]
      school_locations[location_name] << name
    else
      school_locations[location_name] = []
      school_locations[location_name] << name
    end
  end
  school_locations
end
