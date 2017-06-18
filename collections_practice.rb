def begins_with_r(elements)
  elements.each { |x| return false if x.start_with?("r") == false }
  true
end

def contain_a(elements)
  elements.select { |x| x.include?("a")}
end

def first_wa(elements)
  elements.each { |k| return k if k.to_s.start_with?("wa") }
end

def remove_non_strings(arr)
  arr.select { |i| i.is_a? String }
end

def count_elements(arr)
  arr.each do |element|
    element[:count] = 0
    name = element[:name]
    arr.each do |hash|
      element[:count]+=1 if hash[:name] == name
    end
  end
  arr.uniq
end

def merge_data(keys,values)
transformed_data = []
keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        transformed_data << merged_person
      end
    end
  end
  return transformed_data
end

def organize_schools(schools)
  formatted_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if formatted_schools[location]
      formatted_schools[location] << name
    else
      formatted_schools[location] = []
      formatted_schools[location] << name
    end
  end
  formatted_schools
end

def find_cool(elements)
  all_cools = []
  elements.each do |element|
    all_cools << element if element[:temperature] == "cool"
  end
  return all_cools
end
