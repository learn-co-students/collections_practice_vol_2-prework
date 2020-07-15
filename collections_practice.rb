require 'pry'

def begins_with_r(tools)
  r_check = true
  tools.each do |tool|
    if tool[0] != "r"
      r_check = false
    end
  end
  r_check
end

def contain_a(elements)
  elements_with_a = []
  elements.each do |element|
    if element.include?("a")
      elements_with_a.push(element)
    end
  end
  elements_with_a
end

def first_wa(elements)
  elements_starting_with_wa = []
  elements.each do |element|
    if element[0..1] == "wa"
      elements_starting_with_wa.push(element)
    end
  end
  elements_starting_with_wa[0]
end

def remove_non_strings(array)
  strings_only = []
  array.each_with_index do |item, index|
    if item.class == String
      strings_only.push(item)
    end
  end
  strings_only
end

def count_elements(elements)
  elements.collect do |item|
      cloned_item = item.clone
      item[:count] = elements.count(item)
      elements.delete_if {|x| x == cloned_item}
      item
    end
end

def merge_data(a_nest, b_nest)
  merged_nests = []
  a_nest.each do |a_item|
    a_name = a_item.values
    b_nest.each do |b_item|
      b_item.keys.each do |b_key|
        current_person = b_item[b_key]
        if a_name.join == b_key
          nested_item = a_item.merge(current_person)
          merged_nests.push(nested_item)
        end
      end
    end
  end
  merged_nests
end

def find_cool(elements)
  cool_elements = []
  elements.each do |element|
    if element[:temperature] == "cool"
      cool_elements.push(element)
    end
  end
  cool_elements
end

def organize_schools(schools)
  locations = return_locations(schools)
  organized_hash = {}
  locations.each do |location|
    organized_hash[location] = []
    schools.each do |school, location_hash|
      if location_hash[:location] == location
        organized_hash[location].push(school)
      end
    end
  end
  organized_hash
end

def return_locations(schools)
  locations_array = []
  schools.values.each do |location_hash|
    location = location_hash[:location]
    if locations_array.include?(location) == false
      locations_array.push(location)
    end
  end
  locations_array
end








