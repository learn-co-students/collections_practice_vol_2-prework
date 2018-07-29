require 'pry'

def begins_with_r(array)
  array.all? { |element| element[0].downcase == "r" }
end
  
def contain_a(array)
  array.select { |element| element.include?("a".downcase) }
end

def first_wa(array)
  array.detect { |element| element[0..1].downcase == "wa" }
end

def remove_non_strings(array)
  array.reject { |element| element.class != String }
end

def count_elements(array)
  array.map do |element| 
    element[:count] ||= array.count(element)
    array.delete(element)
  end
end

def merge_data(keys, data)
  keys.each do |key|
    data[0].each do |name, attributes|
      if key[:first_name] == name
        key.merge!(attributes)
      end
    end
  end
end

def find_cool(hashes)
  hashes.map do |person|
    person if person[:temperature] == "cool"
  end.compact
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, location|
    organized_schools[location[:location]] ||= []
    organized_schools[location[:location]] << school
  end
  organized_schools
end
  