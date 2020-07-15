require "pry"

def begins_with_r(array)
  array.all? { |word| word.start_with?("r") }
end

def contain_a(array)
  array.select { |word| word.include?("a") }
end

def first_wa(array)
  array.find { |word| word.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if { |element| element.class != String }
end

def count_elements(array)
  counts = Hash.new(0)
  array.each do |element|
    counts[element] += 1
  end
  final_array = []
  counts.each do |element, num|
    element.each do |key, value|
      final_array << {key => value, :count => num}
    end
  end
  final_array
end

def merge_data(keys, data)
  merged_data = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |val|
        merged_data << val.merge(info) if val.values[0] == name
      end
    end
  end
  merged_data
end

def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    hash.each { |key, value| cool_hashes << hash if value == "cool"}
  end
  cool_hashes
end

def organize_schools(schools)
  organized = {}
  schools.collect do |key, value|
    organized[value[:location]] = []
  end
  organized.each do |key, value|
    schools.each do |key1, value1|
      if key == value1[:location]
        value << key1
      end
    end
  end
  organized
end
