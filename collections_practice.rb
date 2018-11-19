require 'pry'

def begins_with_r(array)
  i = 0
  array.each do |word|
    if word.start_with?('r') == true
      i = i + 1
    end
  end
  if i == array.length
    true
  else false
  end
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include?('a')
       new_array.push(word)
    end
  end
  new_array
end

def first_wa(array)
  array.each do |word|
    if word.is_a?(String) && word.start_with?("wa") == true
      return word
    end
  end
end

def remove_non_strings(array)
  new_array = array.collect do |word|
    if word.is_a?(String) == true
      word
    end
  end
  new_array.compact
end

def count_elements(array)
  array.uniq.each do |hash_info|
    hash_info[:count] = array.count(hash_info)
  end
end

def merge_data(key, data)
  key.each do |name_hash|
    data.each do |info_hash|
      name_hash.merge!(info_hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  new_array = []
  array.each do |individual_hash|
    if individual_hash[:temperature] == "cool"
      new_array.push(individual_hash)
    end
  end
  new_array
end

def organize_schools(array)
  updated_hash = {}
    array.each do |school, location|
      location.each do |k, v|
        if updated_hash[v] == nil
          updated_hash[v] = [school]
        else
          updated_hash[v].push(school)
        end
      end
    end
  updated_hash
end
