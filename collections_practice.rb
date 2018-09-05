# your code goes here
def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  array.select do |word|
    word.include?"a"
  end
end

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.select do |word|
    word.class == String
  end
end

def count_elements(array)
  names = []
  array.each do |hash|
    names << hash[:name]
  end
  x = array.each do |hash|
    hash[:count] = names.count(hash[:name])
  end
  x.uniq
end

def merge_data(data1, data2)
  array = []
  data2[0].each do |name, attribute|
    attribute[:first_name] = name
    array << attribute
  end
  array
end

def find_cool(hashes)
  cool_hashes = []
  hashes.each do |hash|
    if hash[:temperature] == "cool"
      cool << hash
    end
  end
  cool_hashes
end

def organize_schools(schools)
  schools_by_location = {}
  schools.each do |name, location_hash|
    if schools_by_location[location_hash[:location]].nil?
      schools_by_location[location_hash[:location]] = [name]
    else
      schools_by_location[location_hash[:location]] << name
    end
  end
  schools_by_location
end
