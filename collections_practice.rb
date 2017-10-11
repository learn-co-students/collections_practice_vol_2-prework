require 'pry'

def begins_with_r(array)
  array.all? do |el|
    el[0] == "r"
  end
end

def contain_a(array)
  array.select do |el|
    el.include?("a")
  end
end

def first_wa(array)
  array.find do |el|
    el[0] == "w" && el[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |el|
    !el.is_a?(String)
  end
end

def count_elements(array)
  counter_hash = Hash.new(0)
  array.each do |el|
    el.each do |key, value|
      counter_hash[value] += 1
    end
  end

  new_array = []
  counter_hash.each do |name, count|
    new_array << {name: name, count: count}
  end
  new_array
end

def merge_data(keys, data)
  new_array = []
  keys.each do |hash|
    name1 = hash[:first_name]
    data.each do |obj|
      obj.each do |name2, info|
        if name1 == name2
          new_array << {:first_name => name1}.merge!(info)
        end
      end
    end
  end
  new_array
end

def find_cool(array)
  new_array = []
  array.each do |obj|
    if obj[:temperature] == "cool"
      new_array << obj
    end
  end
  new_array
end

def organize_schools(hash)
  return_hash = Hash.new(0)
  hash.each do |school, city_hash|
    city_hash.each do |loc, city|
      if !return_hash.include?(city)
        return_hash[city]= []
        return_hash[city] << school
      else
        return_hash[city] << school
      end
    end
  end
  return_hash
end
