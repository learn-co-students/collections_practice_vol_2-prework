# your code goes here
require 'pry'
def begins_with_r(arr)
  arr.each do |word|
    if !word.start_with?("r")
      return false
    end
  end
  true
end

def contain_a(arr)
  arr.select do |word|
    word.include?("a")
  end
end

def first_wa(arr)
  arr.find do |word|
    if word.is_a? String
      word.start_with?("wa")
    end
  end
end

def remove_non_strings(arr)
  arr.select do |element|
    element.is_a? String
  end
end

def count_elements(arr)
  outArr = []
  arr.each do |element|

    count = arr.count(element)
    hashbrown = {}
    hashbrown[element.keys[0]]= element.values[0]
    hashbrown[:count]= count
    if !outArr.include?(hashbrown)
      outArr << hashbrown
    end
  end
  outArr
end

def merge_data(arr1, arr2)
  #Hashes in arrays can be cumbersome!
  arr2[0].values.map.with_index do |value, i|
    arr1[i].merge(value)
  end
end

def find_cool(arr)
  outArr = []
  cool_hash = nil
  arr.each do |hash|
    puts hash
    hash.values.each do |value|
      if value == "cool"
        cool_hash = hash
      end
    end
  end
  outArr << cool_hash
  outArr
end

def organize_schools(hash)
  puts hash
  out_hash = {}
  hash.each do |school, value|
    out_hash[value.values[0]]= []
  end
  hash.each do |school, value|
    out_hash[value.values[0]] << school
  end
  out_hash
end
