require 'pry'
# your code goes here
def begins_with_r(tools)
  tools.each do |curr_tool|
    if curr_tool[0].downcase != "r"
      return false
    end
  end

  true
end

def contain_a(input_arr)
  input_arr.select do |curr_item|
    curr_item.include?("a")
  end
end

def first_wa(input_arr)
  input_arr.each do |item|
    if item[0..1] == "wa"
      return item
    end
  end
end

def remove_non_strings(input_arr)
  input_arr.select do |item|
    item.is_a? String
  end
end

def count_elements(input_arr)
  counted_arr = []
  already_counted = []
  input_arr.each do |item|
    if !already_counted.include?(item[:name])
      item[:count] = input_arr.count(item)
      counted_arr << item
      already_counted << item[:name]
    end
  end

  counted_arr
end

def merge_data(names, personal_info)
  merged_list = []
  names.each do |arr1_person|
    personal_info.each do |arr2_person|
      arr2_person.each do |name, info|
        if arr1_person[:first_name] == name
          merged_hash = {:first_name => arr1_person[:first_name]}
          merged_hash.merge!(info)
          merged_list << merged_hash
        end
      end
    end
  end
  merged_list
end

def find_cool(arr_of_hashes)
  arr_of_hashes.select do |person|
    person[:temperature] == "cool"
  end
end

def organize_schools(school_list)
  schools_by_location = {}
  school_list.each do |school, info|
    info.each do |location_key, location_value|
      if schools_by_location[location_value] == nil
        schools_by_location[location_value] = [school]
      else
        schools_by_location[location_value] << school
      end
    end
  end
  schools_by_location
end
