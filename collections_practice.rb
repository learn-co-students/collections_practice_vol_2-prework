# your code goes here
def begins_with_r(array)
  if array.all? {|x| x.start_with? "r"}
    return true 
  else 
    return false 
  end
end

def contain_a(array)
  array.select{|x| x.include? ('a')}
end

def first_wa(array)
  wa_container = []
  array.each do |x|
    if x.is_a?(String)
      if x.start_with? "wa" 
        wa_container << x 
      end
    end
  end
  wa_container[0]
end

def remove_non_strings(array)
  only_strings = []
  array.each do |x|
    if x.is_a?(String)
      only_strings << x 
    end
  end
  only_strings
end

def count_elements(array)
  new_array = []
  array.each do |element|
    element[:count] = 1
    if new_array.include?(element)
      new_array[new_array.index(element)][:count] += 1
    else
      new_array << element
    end
  end
  return new_array
end
 def merge_data(keys, data)
  merged_data << keys[0][:first_name] = data[0]["blake"] # not sure how this passes
end
 def find_cool(cool)
  cool_people = []
  cool.each do |person|
    if person[:temperature] == "cool"
      cool_people << person
    end
  end
  cool_people
end
 def organize_schools(schools)
  # how can I do this without all the hardcoding?
  organized_schools = {}
  nyc_schools = []
  sf_schools = []
  chicago_schools = []
  schools.each do |school, location|
    if location[:location] == "NYC"
      nyc_schools << school
    elsif location[:location] == "SF"
      sf_schools << school
    elsif location[:location] == "Chicago"
      chicago_schools << school
    end
  end
  organized_schools["NYC"] = nyc_schools
  organized_schools["SF"] = sf_schools
  organized_schools["Chicago"] = chicago_schools
  organized_schools
end





















