# your code goes here
def begins_with_r(array)
  array.all? {|item| item[0,1].upcase == "R" }
end

def contain_a(array)
  array.select{|item| item.chars.any? {|char| char.upcase == "A"}}
end

def first_wa(array)
  array.find{|item| item[0,2].upcase == "WA"}
end

def remove_non_strings(array)
  array.delete_if{|item| !item.is_a?(String)}
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
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
