require 'pry'

def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select do |element|
    element.class == String
  end
end

def count_elements(array)
  array.uniq.each do |word|
    #binding.pry
  word[:count] = array.count(word)
  end
end

def merge_data(keys, data)
merged = []
data = data[0]
keys.each do |element|
  first_name = element[:first_name]
  keys = {:first_name => first_name}
  keys.merge!(data[first_name])
  #binding.pry
  merged << keys
end
merged
end


def find_cool(array)
  result = []
  array.find do |temp|
      if temp[:temperature] == "cool"
        result << temp
  end
end
result
end

def organize_schools(array)
  list = {}
  array.each do |city, school|
    location = school[:location]
    if list.has_key?(location)
      list[location]<< city
    else
      list[location]= [city]
    end
  end
  list
end
=begin

def organize_schools(array)
  list = {}
  array.each do |city, school|
    location = school[:location]
    if list.has_key?(location)
      list[location]<< city
    else
      list[location]= [city]
    end
  end
  list
end

=end
