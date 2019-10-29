# your code goes here
require 'pry'
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.detect {|word| word.match(/wa/)}
end

def remove_non_strings(array)
  array.select {|word| word.is_a?(String)}
end

#how many times something appears in an array
def count_elements(array)
  array.each_with_object(Hash.new(0)){|arr, hash| hash[arr[:name]] += 1}.map{|key, value|{:name=>key, :count=>value}}
end

#combine two nested data structures in one
def merge_data(keys, values)
  new_hash = []
  keys.each do |names|
    value = names[:first_name]
    values.each do |information|
      if information[value]
      data = information[value]
      data[:first_name] = value
      new_hash << data
      end
    end
  end
  new_hash
end

def find_cool(hashes)
  temperature = []
  hashes.each do |hash|
    if hash[:temperature] == "cool"
      temperature << hash
    end
  end
  temperature
end

def organize_schools(schools)
  locations = {}
  schools.each do |school, location|
    location.each do |description, city|
      if locations[city]
        nil
      else
        locations[city] = []
      end
      locations[city] << school
    end
  end
locations
end


# def count_elements(array)
#   array.each do |new_hash|
#     new_hash[:count] = 0
#     name = new_hash[:name]
#   array.each do |hash|
#     if hash[:name] == name
#       new_hash[:count] +=1
#     end
#    end
#  end.uniq
# end
