# your code goes here
#require "pry"
def begins_with_r(array)
   array.all? do |word|
    word.downcase.chr == "r"
  end
end
def contain_a(array)
 array.select do |element| 
   element.include?("a")
 end
end
def first_wa(array)
   array.find do |word|
     word.to_s.start_with?("wa")
   end
end
def remove_non_strings(array)
  array.reject do |element|
    element.class != String
  end
end
def count_elements(array)
  array.group_by(&:itself).map do |key, value|
     key.merge({:count => value.length})
  end
end
def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end
def find_cool(array)
  array.select do |entry| 
    entry if entry.has_value?("cool")
  end
end
def organize_schools(schools)
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










