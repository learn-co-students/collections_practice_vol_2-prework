# your code goes here
def begins_with_r(arr)
  arr.each do |word|
    if word.downcase[0] != 'r' 
    return false
    else
    end
  end
   true
end

def contain_a(arr)
 arr.map do |word|
if word.include?("a")
word
 end
end
.compact
end

def first_wa(arr)
index = arr.length
arr_new = []
 arr.each_with_index do |word|
 if word.slice(0,2) == "wa" 
 arr_new << word
 end
end
arr_new[0]
end

def remove_non_strings(arr)
new_arr = []
  arr.each do |element|
    if element.is_a? String
    new_arr << element
    end
  end
 new_arr
 end

def count_elements(arr)
count = Hash.new 0
new_arr = []
  arr.each do |element|
    element.each do |key, value|
    count[value] += 1
    end
  end
   count.each do |name, count|
   new_arr << {name: name, count: count}
end
new_arr
end


 def merge_data(keys, data)

  arr_merge = []

    keys.each do |element|
    name_data = element[:first_name]
      data.each do |hash|
        hash.each do |names, value|
          if name_data == names
          hash_merge = {element.key(name_data)=>name_data}
          arr_merge << hash_merge.merge(value)
          end
        end
      end
    end
arr_merge
  end
  
  def find_cool(arr)
    new_arr = []
  arr.each do |element|
    puts element
      element.each do |keys, values|
      puts keys, values
        if values == "cool"
        new_arr << element
        end
      end
  end
  new_arr
end


def organize_schools(school_hash)
  new_hash = {}
    school_hash.each do 
    |school_name, location_hash|
    locations = location_hash[:location]
    new_hash[locations] = []
    end
      new_hash.each do |schools_location|
        schools_location.each do |location_key, schools_arr|
          school_hash.each do 
        |school_name, location_hash|
        locations = location_hash[:location]
            if location_key == locations
            new_hash[location_key] << school_name
            end
          end
        end
      end
  new_hash
end