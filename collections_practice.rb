require "pry"

def begins_with_r(array)
  array.each do |string|
    if string[0] != "r"
      return false
    end
  end
  return true
end


def contain_a(array)
  array_1 = []
  array.each do |string|
    if string.include?("a")
      array_1 << string
    end

  end
  array_1
end


def first_wa(array)
  array.each do |string|
    if string[0..1] == "wa"
      return string
    end
  end
end


def remove_non_strings(array)
  array1 = []
  array.each do |element|
    if element.class == String
      array1 << element
    end
  end
  array1
end


def count_elements(array)
  array1 = array.uniq
  array2 = []
  array1.each do |hash|
    hash[:count] = array.count(hash)
    array2 << hash
  end
  array2
end

# def count_elements(array)
#
#   array.each do |original_hash|
#     original_hash[:count] = 0
#     name = original_hash[:name]
#     array.each do |new_hash|
#       if new_hash[:name] == name
#         original_hash[:count] += 1
#       end
#     end
#   end
#   binding.pry
#   array.uniq
# end


def merge_data(array1, array2)
  new_array = []
  array2.each do |element|
    element.each do |key, value|
      array1.each do |hash|
        if key == hash[:first_name]
          element[key][:first_name] = hash[:first_name]
          new_array << element[key]
        end
      end
    end
  end
new_array
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


def organize_schools(hash)
  new_hash = {}
  hash.each do |name, location_hash|
    location_hash.each do |key, location|
      if new_hash[location] == nil
        new_hash[location] = []
        new_hash[location] << name
      else
        new_hash[location] << name
      end
    end
  end
  new_hash
end
