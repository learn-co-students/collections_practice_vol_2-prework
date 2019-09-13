require "pry"

def begins_with_r(array)
  r_array = []
  array.each do |word|
    if word.start_with?("r")
      r_array << word
    end
  end
  if array.length == r_array.length
    return true
  else false
  end
end

def contain_a(array)
  new_array = []
  array.each do |x|
    if x.include?("a")
      new_array << x
    end
  end
  new_array
end

def first_wa(array)
  array.find { |word| word.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  new_array = []
  array.each do |x|
    if x.instance_of?(String)
      new_array << x
    end
  end
  new_array
end

def count_elements(array)
 array_count = Hash.new(0)
  array.collect {|name| array_count[name]+=1 }
    array_count.collect do |hash, number|
      hash[:count] = number
    end
  array_count.keys
end

def merge_data(keys, value)
  keys.each do |name_hash|
    value.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  # new_hash = []
  # hash.each do |name, temp|
  #   if temp == "cool"
  #     return new_hash << "{#{name}, #{temp}}"
  #   end
  # end
  array.select {|temp| temp if temp.has_value?("cool")}

end

def organize_schools(schools)
  locations = {}
    schools.each do |school, school_locations|
      school_locations.each do |location, city|
        if locations[city] == nil
          locations[city] = [school]
        else
          locations[city] << school
        end
      end
    end
    locations
end
