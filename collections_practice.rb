require 'pry'

def begins_with_r(tools_array)
  tools_array.each do |tool|
    if tool[0] != 'r'
      return false
    end
  end
  true
end

def contain_a(array)
  array.select {| item | item.include? 'a'}
end

def first_wa(array)
  array.find {|element| element.to_s[0..1] == 'wa'}
end

def remove_non_strings(array)
  array.select {|item| item.class == String}
end

def count_elements(array)
  return_array = []
  include_array = []
  array.each do |element|
    if include_array.include? element
      return_array.each do |return_element|
        return_element[:count] += 1 if return_element[:name] == element[:name]
      end
    else
      include_array.push(element)
      return_array.push({name:element[:name], count:1})
    end
  end
  return_array
end

def merge_data(data1, data2)
  merged_data = []
  data1.each do |first_name|
    data2.first.each do |name_k|

      if first_name[:first_name] == name_k.first
        merged_data.push(name_k[1].merge(first_name))
      end
    end
  end
  merged_data
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature] == 'cool'
  end
end

def organize_schools(hash)
  organized_schools = {}
  hash.each do |school, location_v|
    unless organized_schools.keys.include? location_v[:location]
      organized_schools[location_v[:location]] = []
    end

    organized_schools[location_v[:location]] << school
  end
  organized_schools
end
