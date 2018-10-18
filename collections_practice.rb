require 'pry'
def begins_with_r(tools)
  truth_array = []
  tools.each do |elements|
      truth_array << elements if elements.start_with?('r')
  end
    if truth_array == tools
      true
    else
      false
    end
end

def contain_a(array)
  a_array = []
  array.each do |elements|
    a_array << elements if elements.include?('a')
  end
  a_array
end

def first_wa(array)
  wa_array = []
  array.each do |elements|
    wa_array << elements if elements.instance_of?(String) && elements.start_with?("wa")
  end
  return wa_array[0]
end

def remove_non_strings(array)
  string_array = []
  array.each do |elements|
    string_array << elements if elements.instance_of?(String)
  end
string_array
end

def count_elements(array)
   array.uniq.each do |elements|
    elements[:count] = array.count(elements)
    elements
  end
end

def merge_data(keys, data)
  merged = []
  keys.each do |key_hash|
    data.each do |data_hash|
      data_hash.each do |key,info|
        if key == key_hash[:first_name]
          merged << key_hash.merge(info)
        end
      end
    end
  end
merged
end

def find_cool(cool_array)
  cool_array.select do |hash|
    hash[:temperature] == "cool"
  end
end


def organize_schools(schools)
  organized_hash = {}
  schools.each do |school,location_key|
    if organized_hash[location_key[:location]]
      organized_hash[location_key[:location]]<< school
    else
      organized_hash[location_key[:location]] = [school]
    end
  end
  organized_hash
end
