# your code goes here
def begins_with_r(array)
  conditional = true
  array.each do |element|
    conditional = false if element[0] != "r"
  end
  conditional
end

def contain_a(array)
  new_array = []
  array.each do |element|
    new_array << element if element.include?("a")
    end
  new_array
end

def first_wa(array)
  first_wa = nil
  array.each do |element|
    if element.match(/wa/)
      first_wa = element
      break
    end
  end
  first_wa
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    new_array << element if element.is_a?(String)
  end
  new_array
end

def count_elements(array)
  array.each do |element|
    element[:count] = 0
    name = element[:name]
    array.each do |hash|
      if hash[:name] == name
        element[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  array = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        array << merged_person
      end
    end
  end
  array
end

def find_cool(array)
  new_array = []
  array.each do |element|
    new_array << element if element[:temperature] == "cool"
  end
  new_array
end


def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
