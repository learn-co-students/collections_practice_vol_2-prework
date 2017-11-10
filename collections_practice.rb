# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.detect {|word| word.match(/wa/)}
end

def remove_non_strings(array)
  array.select {|word| word.is_a?(String)}
end

def count_elements(array)
  array.each do |new_hash|
    new_hash[:count] = 0
    name = new_hash[:name]
  array.each do |hash|
    if hash[:name] == name
      new_hash[:count] +=1
    end
   end
 end.uniq
end

def merge_data(keys, values)
  new_hash = []
  keys.each do |name|
    name = name[:first_name]
    values.each do |information|
      if information[name]
        stored_data = information[name]
        stored_data[:first_name] = name
        new_hash << stored_data
      end
    end
  end
  new_hash
end

def find_cool(hashes)
  cool_array = []
  hashes.each do |value|
    if value[:temperature] == "cool"
      cool_array << value
    end
  end
 cool_array
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, school_location|
    city = school_location[:location]
    if organized_schools[city]
       organized_schools[city] << school
    else organized_schools[city] = []
         organized_schools[city] << school
       end
     end
   organized_schools
end
