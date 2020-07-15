require 'pry'

def begins_with_r(array)
  flag = true
  array.each { |element| flag = false if element[0]!="r"}
  flag
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
  array.each do |element|
    if element.to_s.start_with?("wa")
      return element
    end
  end
end

def remove_non_strings(array)
  array.map do |element|
      if element.instance_of?(String)
        element
      end
  end.compact
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  merged_array = []
  keys.each do |person_name|
    name = person_name[:first_name]
  data.each do |person_data|
    if person_data[name]
      # binding.pry
      merged_person = person_data[name]
      merged_person[:first_name] = name
      merged_array << merged_person
    end
  end
  end
  merged_array
end

def find_cool(data)
  new_array = []
  data.each do |person_info|
    person_info.each do |key, value|
      if value == "cool"
        new_array << person_info
          # binding.pry
      end
    end
  end
  new_array
end

def organize_schools(hash)
  organized_hash = {}
  hash.each do |school, location_hash|
    # binding.pry
    location = location_hash[:location]
    organized_hash[location] ||= []
    organized_hash[location] << school

  binding.pry
  end
  organized_hash
end
