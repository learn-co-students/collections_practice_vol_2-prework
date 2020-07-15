require 'pry'

def begins_with_r(array)
  if array.all? {|word| word.start_with?("r")}
  return true
  else return false
  end
end

def contain_a(array)
  array.find_all {|word| word.include?("a")}
end

def first_wa(array)
  array.each do |word|
    if word.to_s.start_with?("wa")
      return word
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
  !element.is_a?(String)
  end
end

def count_elements(array)
   array.group_by(&:itself).collect do |key, value|
     key.merge({:count => value.length})
  end
end

def merge_data(key, data)

  new_array = []
  new_hash = {}
    key.each do |value|
      name = value[:first_name]
      data.each do |attributes|
        attributes.each do |name_info, stats|
          if name == name_info
            new_hash = {value.key(name) => name}
            new_array << new_hash.merge(stats)
          end
        end
    end
  end
  new_array
end

def find_cool(hash)
  new_array = []
  hash.each do |data|
    if data[:name] == "blake" && data[:temperature] == "cool"
      new_array << data
    end
  end
  new_array
end

def organize_schools(schools)
  new_schools = {}

schools.map do |school, location|
  location.map do |location_key, city|
 
    unless new_schools.key?(city)
      new_schools[city] = [school]
    else
      new_schools[city] << school
    end
    end
  end
  new_schools
end













