  require 'pry'

def begins_with_r(array)
  array.all? { |element| element.start_with?("r") }
end

def contain_a(array)
  new_arr = []
  array.each do |value|
    if value.include?("a")
      new_arr.push(value)
    end
  end
  new_arr 
end

def first_wa(array)
  array.select do |element|
  if element.to_s.start_with?("wa")
    return element
    end
  end
end

def remove_non_strings(hash)
  string_arr = []
  hash.each do |key|
    if key.is_a?(String)
    string_arr.push(key)
    end
  end
  string_arr
end

def count_elements(array)
  array.each_with_object(Hash.new(0)) { |k, v| v[k[:name]] += 1 }.
  collect { |name, count| {:name => name, :count => count  }}
end

def merge_data(hash1, hash2)
  new_hash = []
  hash1.each do |first_name|
    hash2.each do |hash|
      hash.each do |k, v|
        if k == first_name[:first_name]
          new_hash << first_name.merge(v)
        end
      end
    end
  end
  new_hash
end

def find_cool(cool)
  array = []
  cool.each do |hash|
    hash.each do |key, value|
      if key == :temperature
        if value == "cool"
          array.push(hash)
        end
      end
    end
  end
  array
end

def organize_schools(schools)
  new_hash = {}
  schools.collect do |school, key_location|
    key_location.collect do |k, city|
      if new_hash[city] == nil
        new_hash[city] = [school]
      else
        new_hash[city].push(school)
      end
    end
  end
  new_hash
end
