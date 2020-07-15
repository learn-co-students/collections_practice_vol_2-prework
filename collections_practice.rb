# your code goes here
require 'pry'
def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  a_words = []
  array.each do |word|
    if word.include?("a")
      a_words << word
    end
  end
  a_words
end

def first_wa(array)
  array.each do |object|
    if object[0..1] == "wa"
      return object
    end
  end
end

def remove_non_strings(array)
  result = []
  array.each do |element|
    if element.is_a?(String)
      result << element
    end
  end
  result
end

def count_elements(array)
  new_array = []
  array.each do |element|
    element.each do |key, value|
      if new_array.length == 0
        new_array << {key => value, :count => 1}
      else
        new_array.each do |new_hash|
          if new_hash.values.include?(value)
            new_hash[:count] += 1
            break
          elsif !new_hash.values.include?(value)
            new_array << {key => value, :count => 1}
            break
          end
        end
      end
    end
  end
  new_array
end

def merge_data(keys, data)
  merged = []
  keys.each do |key|
    key.each do |key_sym, key_val|
      data.each do |datum|
        datum.each do |datum_sym, datum_val|
          if datum_sym == key_val
            datum_val[key_sym] = key_val
            merged << datum_val
            break
          end
        end
      end
    end
  end
  merged
end

def find_cool(hashes)
  cool = []
  hashes.each do |hash|
    hash.each do |key, value|
      if hash.values.include?("cool")
        cool << hash
        break
      end
    end
  end
  cool
end

def organize_schools(schools)
  hash = {}
  schools.each do |name, location|
    location.each do |key, city|
      if !hash.keys.include?(city)
        hash[city] = [name]
      else
        hash[city] << name
      end
      break
    end
  end
  hash
end 
