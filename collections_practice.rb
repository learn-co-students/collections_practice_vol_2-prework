require 'pry'

def begins_with_r(tools)
  boolean_variable = nil
  tools.each do | tool |
    if tool[0] == "r"
      boolean_variable = true
    else
      boolean_variable = false
      break if boolean_variable == false
    end
  end
  boolean_variable
end

def contain_a(array)
  array.select do | string |
    string.include? "a"
  end
end

def first_wa(array)
  array.find do | string |
    string[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.select do | element |
    element.is_a? String
  end
end

def count_elements(array)
  counthash = Hash.new(0)
  array.each {|v| counthash[v] += 1}
  counthash.collect do |key,value|
    key.merge({count:value})
  end
end

def merge_data(keys,data)
  merge_array = []
  keys.each do |e|
    data.each do |element|
      element.each do |k,v|
        if e[:first_name] == k
          merge_array << e.merge(v)
        end
      end
    end
  end
  merge_array
end

def find_cool(cool)
  cool_array = []
  cool.each do |e|
    if e[:temperature] == "cool"
      cool_array << e
    end
  end
  cool_array
end

def organize_schools(schools)
  location_array = []
  schools.each do |school,place|
    location_array << place[:location]
  end
  locations = location_array.uniq
  organized_schools = Hash.new(0)
  locations.each do |city|
    city_schools = []
    schools.each do |s,pl|
      if city == pl[:location]
        city_schools << s
        organized_schools = organized_schools.merge({city=>city_schools})
      end
    end
  end
  organized_schools
end
