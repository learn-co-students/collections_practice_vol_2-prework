def begins_with_r(array)
  this = true
  array.each do |item|
    this = false if item[0] != "r"
    end
    this
  end

def contain_a (array)
  includes_a = []
  array.each do |item|
    if item.include?("a")
      includes_a << item
    end
  end
  includes_a
end

def first_wa(array)
  first_wa = nil
  array.each do |item|
    if item.match(/wa/)
      #Any literal character you put in a regular expression matches
      #itself in the string.
      #in this case, if any of the items matches "wa"
      return first_wa = item
      #use return so that the FIRST item that matches "wa" will print
      #and stop the loop
    end
  end
end

def remove_non_strings(array)
  strings_array = []
  array.each do |item|
    strings_array << item if item.is_a?(String)
    #add the item to the new array if the item is a string
  end
  strings_array
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
     name = original_hash[:name]
      array.each do |hash|
       if hash[:name] == name
         original_hash[:count] += 1
       end
     end
   end.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  new_array = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      new_array << hash
    end
  end
  new_array
end

def organize_schools(schools)
  organized_schools = {}
    schools.each do |name, location_hash|
      location = location_hash[:location]
      if organized_schools[location]
        organized_schools[location] << name
      else
        organized_schools[location] = []
        organized_schools[location] << name
      end
    end
    organized_schools
end
