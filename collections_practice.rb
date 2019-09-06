def begins_with_r(collection)
  collection.each do |word|
    if word[0] != "r"
      return false
    end 
  end 
  return true 
end

def contain_a(collection)
  collection.select do |word|
    word.include?("a")
  end 
end   

def first_wa(collection)
  collection.find do |word|
    word[0..1] == "wa"
  end 
end

def remove_non_strings(collection)
  new_collection = []
  collection.find do |value|
    if value.class == String
      new_collection << value
    end 
  end 
  new_collection
end 


def count_elements(collection)
names = []
  collection.each do |hash|
    names << hash[:name] 
  end 
  collection.each do |hash|
    hash[:count] = names.count(hash[:name])
  end.uniq
end

def merge_data(keys, data)
new_array = []
  data[0].each do |name, attributes|
    attributes[:first_name] = name 
    new_array << attributes 
  end
  new_array
end


def find_cool(collection)
cool = []
  collection.each do |hash|
    if hash[:temperature] == "cool"
      cool << hash 
    end
  end
  cool
end


def organize_schools(collection)
  schools_by_location = {}
  collection.each do |name, location_hash|
    if schools_by_location[location_hash[:location]].nil? 
      schools_by_location[location_hash[:location]] = [name]
    else 
      schools_by_location[location_hash[:location]] << name
    end 
  end
  schools_by_location
end
