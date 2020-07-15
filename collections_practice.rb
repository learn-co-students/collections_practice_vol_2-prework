# your code goes here
def begins_with_r(tools)
  tools.each.all? do |element|
    if element.start_with?("r")
    true
  else
    false
    end
  end
end

def contain_a(array)
new_array = []
  array.each do |element|
    if element.include?("a")
      new_array << element
    end
  end
  new_array
end

def first_wa(array)
first_wa = []
  array.each do |element|
    if element.match(/wa/)
    first_wa = element
      break
    end
  end
first_wa
end

def remove_non_strings(array)
  array.delete_if {|element| !element.is_a?(String)}
  end

def count_elements(array)
  element_count = []
  array.each do |element|
    element[:count] = 1
      if element_count.include?(element)
        element_count.delete(element)
        element[:count] += 1
      end
      element_count << element
    end
  element_count
end

def merge_data(keys, data)
  collection = []
  keys.each do |person_name|
    name = person_name[:first_name]
    data.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
          collection << merged_person
        end
      end
    end
collection
end

def find_cool(array)
cool_temps = []
  array.each do |element|
    cool_temps << element if element[:temperature] == "cool"
     end
  cool_temps
end

def organize_schools(schools)
  locations = {}
  schools.each {|school, data|
    if !locations.has_key? data[:location]
      locations[data[:location]] = [school]
    else
      locations[data[:location]] << school
    end
  }
  locations
end
