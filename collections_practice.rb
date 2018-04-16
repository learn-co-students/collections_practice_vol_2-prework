require 'pry'

def begins_with_r(array)
  array.each {|element| return false if element[0] != "r"}
  true
end

def contain_a(array)
  a_array = []
  array.each {|element| element.include?("a") ? a_array.push(element) : nil}
  a_array
end

def first_wa(array)
  array.each {|element| return element if element[0..1] == "wa"}
end

def remove_non_strings(array)
  string_array = []
  array.each do |element|
    if element.instance_of?(String)
      string_array.push(element)
    end
  end
  string_array
end

def count_elements(array)
  new_array = []
  b = Hash.new(0)
  array.each {|v| b[v] += 1}
  b.each do |k, v|
    k[:count] = v
    new_array.push(k)
  end
  new_array
end

def merge_data(keys, data)
  new_array = []
  keys.each do |keys_people|
    working_hash = {}
    keys_people.each do |key, name|
      working_hash[key] = name
      data.each do |data_people|
        data_people[name].each do |statis, value|
          working_hash[statis] = value
        end
        new_array.push(working_hash)
      end
    end
  end
  new_array
end

def find_cool(cool)
  cool.each do |people|
    people.each do |name, temperature|
      return [people] if temperature == "cool"
    end
  end
end

def organize_schools(schools)
  schools_organized = {}
  schools.each do |schools, locations|
    locations.each {|key, value| schools_organized[value] = []}
  end
  schools.each do |schools, locations|
    locations.each {|key, value| schools_organized[value].push(schools)}
  end
  schools_organized
end
