# your code goes here
def begins_with_r(array)
  array.all? do |element|
    element[0] == 'r'
  end
end

def contain_a(array)
  array.select do |element|
    element.include? 'a'
  end
end

def first_wa(array)
  array.detect do |element|
    element[0..1] == 'wa'
  end
end

def remove_non_strings(array)
  array.delete_if {|element| !(element.is_a? String)}
end

def count_elements(array)
 array.group_by(&:itself).collect {|group, qty| group.merge(count: qty.size)}
end

def merge_data(keys, data)
  merged = []

  data[0].each do |person, values|
    keys.each do |pair|
      if pair.values[0] == person
        values[:first_name] = person
        merged << values
      end
    end
  end
  merged
end

def find_cool(array)
  new_array = []

  array.each do |element|
    if element[:temperature] == 'cool'
      new_array << element
    end
  end
  new_array
end

def organize_schools(schools)
  organized = {}

  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized[location].is_a? Array
      organized[location] << name
    else organized[location] = [] if organized[location].nil?
      organized[location] << name
    end
  end
  organized
end
