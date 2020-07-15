require 'pry'

def begins_with_r(array)
  letters_array = []
  array.each do |element|
    letters_array << element.chars.first
  end
  if letters_array.uniq.count <= 1
    true
  else
    false
  end
end

def contain_a(array)
  array_of_a = []
  array.each do |element|
    if element.include?('a')
      array_of_a << element
    end
  end
  array_of_a
end

def first_wa(array)
  array.find do |element|
    element[0..1] == 'wa'
  end
end

def remove_non_strings(array)
  string_array = array.select do |element|
    element.class == String
  end
  string_array
end

# def count_elements(array)
#   array.each_with_object(Hash.new(0)) do |pair, hash|
#     hash[pair] += 1
#   end
# end

def count_elements(array)
  new_array = array.uniq
  new_array.each do |hash|
    hash[:count] = array.count(hash)
  end
  new_array
end

def merge_data(keys, data)
  combined = []
  keys.each do |person|
    name = person[:first_name]
    data.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        combined << merged_person
      end
    end
  end
  combined
end

# keys  [{:first_name=>"blake"}, {:first_name=>"ashley"}]
# data [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]


def find_cool(array)
  cool_array = []
  array.each do |person_data|
    if person_data[:temperature] == 'cool'
      cool_array << person_data
    end
  end
  cool_array
end

def organize_schools(hash_of_schools)
  organized_schools = {}
  hash_of_schools.each do |school_key, location_value|
    location = location_value[:location]
    if organized_schools[location]    #if location exists in org schools hash, add the school
      organized_schools[location].push(school_key)
    else      #else create a new key (the location) and add the school 
      organized_schools[location] = [school_key]
    end
  end
  organized_schools
end

