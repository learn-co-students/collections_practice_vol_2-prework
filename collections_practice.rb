# your code goes here
def begins_with_r(array)
  array.all? {|word| word[0].downcase == "r"}
end

def contain_a(array)
  array.select {|word| word.include?('a')}
end

def first_wa(array)
  array.find {|x| x.slice(0..1) == "wa"}
end

def remove_non_strings(array)
  array.select {|x| x.is_a?(String)}
end

def count_elements(array)
  counted = []
  array.uniq.each do |hash|
    entry = Hash.new
    entry[:name] = hash[:name]
    entry[:count] = array.count(hash)
    counted << entry
  end
  counted
end

def merge_data(array1, array2)
merged = []
  array1.each do |name_hash|
    array2_entry = array2.find {|hash| hash.fetch(name_hash[:first_name])}
    array2_hash = array2_entry[name_hash[:first_name]]
    entry = Hash.new
    entry[:first_name] = name_hash[:first_name]
    entry[:awesomeness] = array2_hash[:awesomeness]
    entry[:height] = array2_hash[:height]
    entry[:last_name] = array2_hash[:last_name]
    merged << entry
  end
    merged
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(hash)
  organized = {}
  hash.each do |key, value|
    location_hash = value
    if organized.has_key?(location_hash[:location]) == false
      organized[location_hash[:location]] = [key]
    else
      organized[location_hash[:location]] << key
    end
  end
  organized
end
