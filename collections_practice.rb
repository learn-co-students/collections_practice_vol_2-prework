require 'pry'

# your code goes here

def begins_with_r(tools)
  result = nil
  tools.each {|tool| result = tool.start_with?("r")}
  result
end

def contain_a(elements)
  elements.collect do |element|
    element if element.include?("a")
  end.compact
end

def first_wa(elements)
  elements.each_with_index do |element, index|
    if element.class == Symbol
      elements.delete_at(index)
      elements.insert(index, element.to_s)
    end
  end
  elements.collect {|str| str if str.start_with?("wa")}.compact.first
end

def remove_non_strings(elements)
  elements.map {|element| element if element.class == String}.compact
end

def count_elements(elements)
  new_arr = elements.uniq
  new_arr.collect do |element|
    count = elements.count(element)
    element[:count] = count
    element
  end
end

def merge_data(keys, data)
  result = []
  keys.each do |name|
    data.each do |object|
      object.each do |k, v|
        result << name.merge(v) if k == name[:first_name]
      end
    end
  end
  result
end

def find_cool(objects)
  objects.collect do |obj|
    obj[:temperature] == "cool" ? obj : nil
  end.compact
end

def organize_schools(schools)
  result = {}
  schools.each do |school, location|
    school_location = location[:location]
    result.has_key?(school_location) ? result[school_location] << school : result[school_location] = [school]
  end
  result
end


