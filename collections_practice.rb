def begins_with_r(array)
  array.all? {|word|
    word.chr == "r"}
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find {|word| word[0,2] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|word| word.class != String}
end

def count_elements (array)
  counts = Hash.new 0

  array.each do |element|
    counts[element] += 1
  end
  newarray = []
  counts.each do |element, number|
    element.each do |key, value|
    newarray << {key => value, count: number}
  end
end
  newarray
end

def merge_data (keys, data)
  merged = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |element|
        if element.values[0] == name
          merged << element.merge(info)
        end
      end
    end
  end
merged
end

def find_cool(array)
  cool = []
  array.each do |hash|
  if hash[:temperature] == "cool"
    cool << hash
  end
end
  cool
end

def organize_schools(hash)
  locations = {}
  hash.values.each { |location| locations[location.values[0]] = [] }
  hash.each { |school, location| locations[location.values[0]] << school }
  locations
end 
