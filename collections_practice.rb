def begins_with_r(array)
  array.all? do |element|
    element[0] == "r"
  end
end

def contain_a(array)
  a_elements = []
  array.each do |element|
    a_elements << element if element.include?("a")
  end
  a_elements
end

def first_wa(array)
  array.find do |element|
    element[0,2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  array.each do |element|
    element[:count] = 0
    name = element[:name]
    array.each do |value|
      if value[:name] == name
        element[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  new_data = []
  keys.each do |person|
    name = person[:first_name]
    values.each do |person_data|
      if  person_data[:first_name] = name
        merged_data = person_data[name]
        merged_data[:first_name] = name
        new_data << merged_data
      end
    end
  end
  new_data
end

def find_cool(name)
  cool_peeps = []
  name.each do |person|
    if person[:temperature] == "cool"
      cool_peeps << person
    end
  end
  cool_peeps
end

def organize_schools(school)
  schools_by_location = {}
  school.each do |name, location_hash|
    location = location_hash[:location]
    if schools_by_location[location] 
      schools_by_location[location] << name
    else
      schools_by_location[location] = []
      schools_by_location[location] << name
    end
  end
  schools_by_location
end
      
    
    
    
  
  

  
  
  
  
  
  