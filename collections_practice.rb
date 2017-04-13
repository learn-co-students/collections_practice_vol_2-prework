def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.reject {|element| element.class != String}
end

def count_elements(array)
  array.each do |element|
    element[:count] = 0
    array.each do |hash|
      element[:count] += 1 if hash[:name] == element[:name]
    end
  end
  array.uniq
end

def merge_data(keys, data)
  array = []
  keys.each do |person|
    name = person[:first_name]
    data.each do |values|
      if values[name]
        merged = values[name]
        merged[:first_name] = name
        array << merged
      end
    end
  end
  array
end

def find_cool(array)
  array.select do |element|
    element[:temperature] == "cool"
  end
end

def organize_schools(schools)
  organized = {}
  schools.each do |school, location|
    place = location[:location]
    if organized[place]
      organized[place] << school
    else
      organized[place] = []
      organized[place] << school
    end
  end
  organized
end
