# your code goes here
require "pry"

def begins_with_r(array)
  array.each do |item|
    if item[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  has_a = []
  array.each do |item|
    if item.include?("a")
      has_a << item
    end
  end
  has_a
end

def first_wa(array)
  array.each do |item|
    if item[0..1] == "wa"
      return item
    end
  end
end

def remove_non_strings(array)
  strings = []
  array.each do |item|
    if item.is_a? String
      strings << item
    end
  end
  strings
end

def count_elements(array)
  count = Hash.new(0)
  new_array = []

  array.each do |item|
    count[item] += 1
  end
  count.each do |value, counter|
    value.each do |k, v|
      new_array << {k => v, :count => counter}
    end
  end
  new_array
end

def merge_data(keys, data)
  merged_data = []
  data.each do |info|
    info.each do |name, details|
      keys.each do |value|
        if value.values[0] == name
          merged_data << value.merge(details)
        end
      end
    end
  end
  merged_data
end

def find_cool(data)
  is_cool = []
  data.each do |person|
    person.each do |key, value|
      if key == :temperature && value == "cool"
        is_cool << person
      end
    end
  end
  is_cool
end

def organize_schools(schools)
  organized = {}
  schools.values.each do |location|
    organized[location.values[0]] = []
  end
  schools.each do |school, location|
    organized[location.values[0]] << school
  end
  organized
end
