# your code goes here
require "pry"

def begins_with_r(array)
  array.each do |item|
    if item[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  i = []
  array.each do |item|
    if item.include?("a")
      i << item
    end
  end
  i
end

def first_wa(array)
  array.each do |item|
    if item[0] == "w" && item[1] == "a"
      return item
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    item.class != String
  end
  array
end

def count_elements(array)
  i, a, j = 0, [], array
  array.each do |item|
    if a.include?(item) == false
      a << item
    end
    j.each do |data|
      if data == item
        i += 1
      end
    end
  a[-1][:count] = i
  array.delete(item)
  j.delete(item)
  i = 0
  end
  a
end

def merge_data(keys,data)
  i = []
  keys.each do |item|
    data.each do |stats|
      stats.each do |bio, info|
        if item[:first_name] == bio
          i << info
          i[-1][:first_name] = bio
        end
      end
    end
  end
  i
end

def find_cool(array)
  array.each do |item|
    if item.has_value?("cool")
      return [item]
    end
  end
end

def organize_schools(hash)
  i = {}
  hash.each do |name, place|
    if i.has_key?(place[:location]) == false
      i[place[:location]] = []
      i[place[:location]] << name
    else
      i[place[:location]] << name
    end
  end
  i
end
