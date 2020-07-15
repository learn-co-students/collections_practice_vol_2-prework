# your code goes here
require 'pry'
def begins_with_r(array)
  array.all? {|word| word.downcase.start_with?('r')}
  # .all? enumerable method returns true if the block never returns false or nil.
  # .downcase string method makes the word in the array all lowercase
  # .start_with?() string method returns true if the string starts with one of the prefixes given
end

def contain_a(array)
  array.select {|word| word.include?('a')}
  # .select array method returns a new array containing all elements of array for which the
  #   given block returns a true value
  # .include?() string method returns true if string contains the given string/character
end

def first_wa(array)
  array.find {|word| word.to_s.downcase.start_with?('wa')}
  # .find enumerable method returns the first for which the block is not false
  # .to_s method converts the element to a string in case it's a symbol/etc.
  # used the .downcase and the .start_with() string method again as part of the block
end

def remove_non_strings(array)
  array.delete_if {|element| element.instance_of?(String) == false}
  # .delete_if{} enumerable method deletes every element of array for which block evaluates to true
  #   the return is the remaining elements in the array.
  # .instance_of?(class) object method returns true if obj is an instance of the given class
end

def count_elements(array)
  array.each do |orig_hash|
    orig_hash[:count] = 0 # for each orig_hash set a new key-value pair
    array.each do |hash_with_count| #iterate through the update array
      if hash_with_count[:name] == orig_hash[:name]
        orig_hash[:count] += 1
      end
    end
  end.uniq # the .uniq array method removes any duplicate elements & returns a new array
end

def merge_data(keys, data)
merged_array = []
  keys.each do |symbol| # {:first_name=>"blake"} - next iteration gave {:first_name=>"ashley"}
    key_name = symbol[:first_name]
    data.each do |values| # {"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}
      if values[key_name] # checks if there's data for the name from the keys hash
        merged_pax = values[key_name] # assigns the data hash to variable name
        merged_pax[:first_name] = key_name # adds a new key-value pair into the new hash
        merged_array << merged_pax #pushes the new hash into an array
      end
    end
  end
merged_array
end

def find_cool(array)
  cool_array = []
  array.each do |element| # {:name=>"ashley", :temperature=>"sort of cool"}
    if element[:temperature].downcase == "cool"
      cool_array << element
    end
  end
  cool_array
end

def organize_schools(schools)
  organized_schools = {}
    schools.each do |name, location| # |"flatiron school bk", {:location=>"NYC"}|
      city = location[:location] # sets variable city = "NYC"
      if organized_schools[city] #if "NYC" exists then push the school name into the array
        organized_schools[city] << name
      else # if "NYC" doesn't exist, then create a new key-value pair where the value is an array
        organized_schools[city] = []
        organized_schools[city] << name
      end
    end
  organized_schools
end
