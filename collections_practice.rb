# your code goes here
require "pry"

def begins_with_r(collection)
  collection.all? { |word| word.start_with? "r" }
end

def contain_a(collection)
  collection.select { |word| word.include? "a" }
end

def first_wa(collection)
  collection.find do |word|
    if word.is_a?(String)
      word.start_with? "wa"
    end
  end
end

def remove_non_strings(collection)
  collection.delete_if do |word|
    word.is_a?(String) == false
  end
end

def count_elements(collection)
  result = Array.new
  collection.each {|item| result << item if result.include?(item) == false}
  result.each {|item| item[:count] = collection.count(item)}
  result
end

def merge_data(keys, data)
  result = Array.new
  keys.each {|key| result << key}
  data[0].fetch("blake").each {|key, value| result[0][key] = value}
  data[0].fetch("ashley").each {|key, value| result[1][key] = value}
  result
end

def find_cool(collection)
  collection.delete_if {|da_hash| da_hash[:temperature] != "cool"}
end

def organize_schools(schools)
  result = {"NYC"=>[],"SF"=>[],"Chicago"=>[]}
  schools.each do |school, loc_hash|
    case loc_hash[:location]
    when "NYC"
      result["NYC"] << school
    when "SF"
      result["SF"] << school
    when "Chicago"
      result["Chicago"] << school
    end
  end
  result
end
