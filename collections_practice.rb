require 'pry'

def begins_with_r(array)
  for i in 0...array.length do
    if array[i][0].downcase != 'r'
      return false
    end
  end
  true
end

def contain_a(array)
  words_with_s = []
  for i in 0...array.length do
    if array[i].downcase.include?('a')
      words_with_s << array[i]
    end
  end
  words_with_s
end

def first_wa(array)

  for i in 0...array.length do
    if array[i][0..1].downcase == "wa"
      return array[i]
    end
  end

  
end

def remove_non_strings(array)
    new_array = []
    array.each do |x|
      if x.class == String
        new_array << x
      end
    end
    
    new_array
end

def count_elements(array)
  array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
   array.select do |word|
    if word.has_value?("cool")
      word
  end
end

end

def organize_schools(array)
  by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end