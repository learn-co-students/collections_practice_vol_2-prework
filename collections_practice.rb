# your code goes here

require "pry"

def begins_with_r(array)
  array.each do | string |
    if string[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  new_array = array.map do | string |
    if string.include?("a")
        string
    end
  end
  new_array.compact
end

def first_wa(array)
  array.each do |element|
    if element.to_s.include?("wa")
      return element
    end
  end
end

def remove_non_strings(array)
  array.select{|element| element.is_a?(String)}.map {|i| i}
end

def count_elements(array)
  counts = Hash.new(0)
  array.collect {|element| counts[element]+=1 }
    counts.collect do |hash, number|
      hash[:count] = number
    end
  counts.keys
end
#[{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#[{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]

def merge_data(keys, data)
  merged_data = []
  keys.each_with_index do |object, index|
    object.each do |k, v|
     data[0].each do |person, attributes|
       if object[k] == person
          merged_data << object.merge(attributes)
        end
      end
    end
  end
  return merged_data
end

def find_cool(array)
  new_array = []
  array.each do |object|
    object.each do |k, v|
      if v == "cool"
        new_array << object
      end
    end
  end
  return new_array
end

def organize_schools(object)
  new_object = {}
  object.each do |school, location|
    location.each do |k,v|
     if new_object[v] == nil
        new_object[v] = [school]
      else
        new_object[v] << school
      end
    end
  end
  return new_object
end


