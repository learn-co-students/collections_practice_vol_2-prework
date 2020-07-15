# your code goes here
def begins_with_r(array)
r_first = true
  array.each do |word|
    if word[0] != "r"
      r_first = false
    end
  end
return r_first
end

def contain_a(array)
  a_included = []
  array.each do |word|
    if word.include? "a"
      a_included << word
    end
  end
  return a_included
end

def first_wa(array)
  wa_array = []
  array.each do |word|
    if word[0] == "w" && word[1] == "a"
      wa_array << word
    end
  end
  return wa_array[0]
end

def remove_non_strings(array)
non_strings = []
  array.map do |word|
    if word.is_a? String
      non_strings << word
    else
      nil
    end
    return non_strings
  end
end

def count_elements(array)
array.each do |name_hash|
  name_hash[:count] = 0
  name = name_hash[:name]
  array.each do |counter|
    if counter[:name] == name
      name_hash[:count] += 1
    end
  end
end.uniq
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |name|
    p_name = name[:first_name]
    data.each do |person_data|
      if person_data[p_name]
        person_hash = person_data[p_name]
        person_hash[:first_name] = p_name
        merged_data << person_hash
      end
    end
  end
  return merged_data
end

def find_cool(array)
  cool_array = []
  array.each do |is_cool|
    if is_cool[:temperature] == "cool"
      cool_array.push(is_cool)
    end
  end
  return cool_array
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]

    if organized_schools[location]
    organized_schools[location] << name
    else organized_schools[location] = []
    organized_schools[location] << name
    end
  end
  return organized_schools
end
