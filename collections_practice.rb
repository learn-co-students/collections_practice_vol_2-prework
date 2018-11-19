require 'pry'

def begins_with_r(array)
 array.all? do |word|
    word.start_with?("r")
 end
end

def contain_a(array)
  array.find_all do |word|
    word.include?("a")
  end
end

def first_wa(array_with_keys)
  array_with_keys.each do |word|
    word_string = word.to_s
    if word_string.start_with?("wa")
      return word_string
    end
  end
end

def remove_non_strings(array_with_mixed_elements)
  string_elements = []
  array_with_mixed_elements.each do |elements|
    if elements.class == String
      string_elements.push(elements)
    end
  end
    string_elements
end

def count_elements(array)
  array.uniq.each do |hash_1|
    count = 0
    array.each do |hash_2|
      if hash_2 == hash_1
        count +=1
      end
    end
      hash_1[:count] = count
  end
end

def merge_data(keys, data)
merged = []
  keys.each do |first_name|
    first_name.each_key do |name|
      data.each do |value|
        merged << first_name.merge(value[first_name[name]])
      end
    end
  end
  merged
end

def find_cool(array)
new_arr = []
 array.each do |hash|
   hash.each do |key, value|
     if key == :temperature && value == "cool"
       new_arr << hash
     end
   end
 end
new_arr
end

def organize_schools(school_hash)
new_hash = {}
  school_hash.each do |school, hash|
    hash.each do |location_key, city|
        if new_hash[city] == nil
          new_hash[city] = [school]
        else
          new_hash[city] << school
        end
      end
    end
    new_hash
  end
