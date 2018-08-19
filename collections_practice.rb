require "pry"

def begins_with_r(tools)
  tools.all? {|tool| tool[0] == "r"}
end

def contain_a(strings)
  strings.select { |string| string.include?("a")}
end

def first_wa(strings)
  strings.select { |string| string[0..1] == "wa"}[0]
end

def remove_non_strings(objects)
  objects.select { |object| object.is_a?(String)}
end

def count_elements(list)
  names = {}
  list.each do |object|
    names[object[:name]] = names[object[:name]] ? names[object[:name]] + 1 : 1
  end
  list_with_counts = []
  names.each do |name, count|
    list_with_counts << {name: name, count: count}
  end
  list_with_counts
end

def merge_data(keys, data)
  new_data = []
  data[0].each do |person, info|
    new_data << keys.select {|key| key[:first_name] == person}[0].merge(info)
  end
  new_data
end

def find_cool(coolnesses)
  coolnesses.select {|coolness| coolness[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, info|
    location = info[:location]
    if !organized_schools[location]
      organized_schools[location] = [school]
    else
      organized_schools[location] << school
    end
  end
  organized_schools
end
