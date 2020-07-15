#require 'pry'

def begins_with_r(list_of_stuff)
  list_of_stuff.each do |thing|
    return false if thing[0].downcase != "r"
  end
  true
end

def contain_a(list_of_stuff)
  stuff_with_a = []
  list_of_stuff.each do |thing|
    stuff_with_a << thing if thing.include?('a')
  end
  stuff_with_a
end

def first_wa(list_of_stuff)
  list_of_stuff.each do |thing|
    return thing if thing[0..1] == "wa"
  end
end

def remove_non_strings(list_of_stuff)
  list_of_stuff.delete_if do |thing|
    !thing.is_a?(String)
  end
end

def count_elements(array)
  counter = Hash.new(0)
  array.each do |element|
    element.values.each do |value|
      counter[value] += 1
    end
  end
  counter.collect do |element|
    {:name => element[0], :count => element[1]}
  end
end

def merge_data(keys, data)
  stuff = keys.collect do |data_key|
    key = data_key.keys[0]
    value = data_key[key]
    data.collect do |datum|
      datum[value][key] = value if datum.key?(value)
      merged_datum = datum[value]
      #binding.pry
    end
  end
  # kludge to strip hashes out of list containers
  stuff.collect do |stuff|
    stuff[0]
  end
end

def find_cool(word)
  cool_stuff = []
  word.each do |entry|
    cool_stuff << entry if entry.value?("cool")
  end
  cool_stuff
end

def organize_schools(list_of_schools)
  school_hash = {}
  list_of_schools.keys.each do |school|
    city = list_of_schools[school][:location]
    if school_hash[city].class == NilClass
      school_hash[city] = []
    end
    school_hash[city] << school
    #binding.pry
  end
  school_hash
end
