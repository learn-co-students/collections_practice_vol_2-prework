require 'pry'

def begins_with_r(array)
  array.each do |element|
    if !element.start_with?("r")
      return false
    end
  end
  true
end



def contain_a(collection)
  elements_containing_a = []
  collection.each do |element|
    if element.include?("a") || element.include?("A")
      elements_containing_a << element
    end
  end
  elements_containing_a
end



def first_wa(collection)
  collection.each do |element|
    if element.to_s.start_with?("wa")
      return element
    end
  end
end



def remove_non_strings(array)
  string_array = []
  array.each do |element|
    if element.class == String
      string_array << element
    end
  end
  return string_array
end



def count_elements(array)
  item_counts = array.uniq
  item_counts.each do |unique_item|
    item_number = array.count(unique_item)
    unique_item[:count] = item_number
  end
  item_counts
end



def merge_data(keys, data)
  merged_array = []
  keys.each do |key|
    key.each do |k, v|
      merged_array << {k => v}
    end
  end
  data.each do |person|
    person.each do |name, information|
      merged_array.each do |key|
        if key.value?(name)
          information.each do |attr, val|
            key[attr] = val
          end
        end
      end
    end
  end
  merged_array
end



def find_cool(array)
  cool_people = []
  array.each do |person|
    person.each do |k, v|
      if v == "cool"
        cool_people << person
      end
    end
  end
  cool_people
end



def organize_schools(list_of_schools)
  locations = []
  organized_schools = {}
  list_of_schools.values.each do |location|
    locations << location.values
  end
  locations.uniq.each do |ul|
    schools_in_loc = []
    list_of_schools.each do |school, location|
      if location.has_value?(ul[0])
        schools_in_loc << school
      end
    end
    organized_schools[ul[0]] = schools_in_loc
  end
  organized_schools
end
