# your code goes here
def begins_with_r(array)
  array.all? { |element| element.start_with?("r") }
end

def contain_a(array)
  contains_a_array = []
  array.each { |element| contains_a_array << element if element.include?("a") }
  contains_a_array
end

def first_wa(array)
  array.find { |element| element.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  strings = []
  array.each { |element| strings << element if element.class == String }
  strings
end

def count_elements(array)
  counts = Hash.new 0
  array.each do |word|
    counts[word] += 1
  end
  counts_array = []
  counts.each do |word, num|
    word.each do |key, value|
      counts_array << { key => value, :count => num }
    end
  end
  counts_array
end

def merge_data(keys, data)
  merged_hash = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_value|
        merged_hash << key_value.merge(info) if key_value.values[0] == name
      end
    end
  end
  merged_hash
end

def find_cool(cool)
  cool.select { |person| person.any? {|key, value| value == "cool"} }
end

def organize_schools(schools)
  school_hash = {}
  schools.values.each { |location| school_hash[location.values[0]] = [] }
  schools.each { |school, location| school_hash[location.values[0]] << school }
  school_hash
end
