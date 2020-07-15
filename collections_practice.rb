require "pry"
# your code goes here
def begins_with_r(array)
  array.all? { |word| word.capitalize.chars.first == "R" }
end

def contain_a(array)
  array.select { |word| word.upcase.chars.include?("A") }
end

def first_wa(array)
  array.find do |word|
    if word.is_a? String
      word.upcase.chars[0] == "W" && word.upcase.chars[1] == "A"
    end
  end
end

def remove_non_strings(array)
  array.select { |word| word.is_a? String }
end

def count_elements(array)
  elements = []
  counts = []
  elements_and_counts = []

  array.each do |word|
    if elements.include?(word)
      counts[elements.index(word)] += 1
    else
      elements << word
      counts << 1
    end
  end

  elements.each do |word|
    elements_and_counts << word.merge({:count => counts[elements.index(word)]})
  end

  elements_and_counts
end

def merge_data(keys, data)
  merged_array = []

  keys.each do |name|
    data[0].each do |person_key, person_value|
      if name[:first_name] == person_key
        person_hash = person_value.merge(name)
        merged_array << person_hash
      end
    end
  end

  merged_array
end

def find_cool(array)
  array.select do |person_hash|
    person_hash[:temperature] == "cool"
  end
end

def organize_schools(schools_hash)
  organized_schools_hash = {}

  schools_hash.each do |school, school_values|
    if organized_schools_hash[school_values[:location]] == nil
      organized_schools_hash[school_values[:location]] = [school]
    else
      organized_schools_hash[school_values[:location]] << school
    end
  end

  organized_schools_hash
end
