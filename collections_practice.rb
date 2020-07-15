# your code goes here
require 'pry'
def begins_with_r(tools_array)
  !tools_array.any? {|item| item[0] != 'r'}
end

def contain_a(elements)
  elements.select {|element| element.include?('a')}
end

def first_wa(elements)
  elements.find{ |element| element[0] == 'w' and element[1] = 'a'}
end

def remove_non_strings(elements)
  elements.select { |element| element.instance_of? String}
end

def count_elements(elements)
  #get uniq items
  unique_elements = elements.uniq

  #return count of each
  unique_elements.each do |item|
      item[:count] = elements.count(item)
  end
  unique_elements

end

def merge_data(keys,data)
  ret_array = []
  keys.each do |key|
    data.each do |datum|
      key.each do |deep_key, value|
        if datum[value].size > 0
         ret_array << key.merge(datum[value])
        end
      end
    end
  end
ret_array
end

def find_cool(cool)
  cool.each do |hash|
    hash.each do |key,value|
      if value =='cool'
        return [hash]
      end
      end
  end
end

def organize_schools(schools)
  cities = {}
  schools.each do |school_name,school_hash|
    school_hash.each do |school_location_key,city|
      if cities[city]
        cities[city] << school_name
      else
        cities[city] = [school_name]
      end
    end
  end
  cities
end
