# your code goes here
require 'pry'
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
    if word.include?("a") == true
      array
    end
  end
end

def first_wa(array)
  array.each do |word|
    if word[0] == "w" && word[1] == "a"
      return word
    end
  end
end

def remove_non_strings(array)
  array.select do |element|
    if element.kind_of?(String)
      array
    end
  end
end
##################################################
def count_elements(array)
  count_array = []
  array.each do |ele|
    if count(ele[:name]) == false
      ele[:count] = 1
      count << ele
      binding.pry
    elsif count[0] = ele[:name]
      count[0][:count] += 1
    else
      count[1][:count] += 1

  end
end
##################################################
def merge_data(keys, data)
  data[0].values.map.with_index {|name, i| keys[i].merge(name)}
end

def find_cool(array)
  new_array = []
  array.each do |element|
    if element[:temperature] == "cool"
      new_array << element
    end
  end
  new_array
end

def organize_schools(hash)
  organized = {}
  hash.each do |school, location|
    location.each do |attribute, name|
      if organized.include?(name) == false
        organized[name] = [school]

      else
        organized[name] << school
      end
    end
  end
  organized
end
