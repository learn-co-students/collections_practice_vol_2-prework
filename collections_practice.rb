require 'pry'
# your code goes here
def begins_with_r(tools)
  tools.each do |item|
    if !item.start_with?('r')
      return false
    end
  end
  return true
end

def contain_a(list)
  return_array = []
  list.each do |item|
    if item.include?('a')
      return_array << item
    end
  end
  return_array
end

def first_wa(hash_list)
  hash_list.each do |item|
    if item.to_s.start_with?('wa')
      return item
    end
  end
end

def remove_non_strings(list)
string_array = []
  list.each do |item|
    if item.is_a?(String)
      string_array << item
    end
  end
string_array
end

def count_elements(name_hash)
  new_hash_array = []

  name_hash.each do |item|
    item_hold = item
    item_hold[:count] = name_hash.count(item)
    new_hash_array << item_hold

    name_hash.delete_if do |a| a == item
    end


  end

  new_hash_array
end


def merge_data (keys, data)
  new_hash_array = []
  new_hash_item = {}
  keys.each do |name|
    data.each do |item|
      item.each do |key, value|
        if key == name[:first_name]
          new_hash_item = name.merge(value)
          new_hash_array << new_hash_item
        end
      end
    end
  end
 new_hash_array
end


def find_cool (cool)
  cool_array = []
  cool.each do |item|
    item.each do |key, value|
      if value == "cool"
        cool_array << item
      end
    end
  end
  cool_array
end


def organize_schools(schools)
  organized_schools = {}

  schools.each do |school_name, location|
    if !organized_schools.include?(location[:location])
      organized_schools[location[:location]] = []
      organized_schools[location[:location]] << school_name
    else
      organized_schools[location[:location]] << school_name
    end
  end
  organized_schools
end
