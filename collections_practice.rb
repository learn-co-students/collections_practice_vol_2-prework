# your code goes here
def begins_with_r(array)
  array.all? do |e|
    e.upcase.chr == "R"
  end
end

def contain_a(collection)
  collection.select do |element|
    element.split("").include?("a")
  end
end

def first_wa(collection)
  collection.find do |e|
    e.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |e|
    !e.is_a? String
  end
end

def count_elements(collection)
#iterate over array giving each hash a count key initiated at zero
  collection.each do |h|
    h[:count] = 0
    #for each hash in the array with the same :name value increase count by 1
    collection.each do |e|
      if e[:name].eql?(h[:name])
        h[:count] += 1
      end
    end
  end
  #strip all duplicates and return clean array
  clean = collection.uniq
end

def merge_data(keys, data)
  merged_data = []
  keys.each_with_index do |key_hash, index| #into key array
    key_hash.each do |key, value| #into each hash in key array
      data.each do |data_hash| #into data array
        data_hash.each do |data_hash_key, data_hash_value| #into data array hash
          if data_hash_key == value #if data array key matches key array value merge values
            merge_temp = key_hash.merge(data_hash_value)
            merged_data << merge_temp #add merged hash to new array
          end
        end
      end
    end
  end
  merged_data #return new array
end

def find_cool(collection)
  cool_people = []
  collection.each do |hash|
    if hash[:temperature] == "cool"
      cool_people << hash
    end
  end
  cool_people
end

def organize_schools(collection)
  organized_schools = {}
  locations = []
  #grab all cities
  collection.each do |k, v|
    v.each do |vk, vv|
      locations << vv
    end
    locations = locations.uniq
  end
  for i in 0..locations.length - 1
    loc = locations[i]
    schools = []
    collection.each do |school, loc_h|
      if loc_h[:location] == loc
        schools << school
      end
      organized_schools[loc] = schools
    end
  end
  organized_schools
end
