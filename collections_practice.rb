# your code goes here
require 'pry'

def begins_with_r(array)
  new_array = []
  array.each do |element|
    if element > "q" && element < "s"
      new_array << element
      if new_array.count == array.count
        return true
      end
    else
      return false
    end
  end
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include?("a")
      new_array << element
    end
  end
  new_array
end

def first_wa(array)
  final_array = []
  new_array = []
  array.each do |element|
    new_array << element.to_s
  end
  new_array.each do |element|
    if element.include? ("wa")
      final_array << element
    end
  end
  final_array.first
end

def remove_non_strings(array)
  final_array = []
  array.each do |element|
    if element == element.to_s
      final_array << element
    end
  end
  final_array
end

def count_elements(array)
  array.each_with_object(Hash.new(0)) { |item, hash| hash[item[:name]] += 1 }.
  map { |name, count| { :name=>name, :count=>count } }
end

def merge_data(keys, value)
  new_array = []
  keys.each do |hash|
    hash.each_key do |name|
      value.each do |value|
        new_array << hash.merge(value[hash[name]])
      end
    end
  end
  new_array
end

def find_cool(array)
  array.each do |hash|
    hash.each do |key, value|
      if key == :temperature && value == "cool"
        return [hash]
      end
    end
  end
end

def organize_schools(all_schools)
  new_hash = {}
  all_schools.each do |school, hash|
    hash.each do |location_key, actual_location|
      new_hash[actual_location] = []
    end
  end
  all_schools.each do |school, hash|
    hash.each do |location_key, actual_location|
      if new_hash.include?(actual_location)
        new_hash[actual_location] << school
      end
    end
  end
  new_hash
end
