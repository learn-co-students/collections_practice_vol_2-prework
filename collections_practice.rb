# your code goes here
require 'pry'


def begins_with_r(tools)
  tools_with_r = []
  tools.each do |tool|
    chopped_tools = tool.split(//)
    #binding.pry
    if chopped_tools[0] == "r"
      tools_with_r << tool
    end
    tools_with_r
  end
  if tools_with_r == tools
    return true
  else
    return false
  end
end

def contain_a(elements)
  elements_with_a = []
  elements.each do |element|
    if element.include?("a")
      elements_with_a << element
    end
  end
  elements_with_a
end

def first_wa(words)
  words_with_wa = []
  words.each do |word|
    chopped_words = word.to_s.split(//)
    if chopped_words[0] == "w" && chopped_words[1] == "a"
      words_with_wa << word
    end
  end
  words_with_wa[0]
end

def remove_non_strings(array)
  string_array = []
  string_class = "string"
  array.each do |element|
    if element.class == string_class.class
      string_array << element
    end
  end
  string_array
end

def count_elements(array)
  array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(keys, data)
  merged_array = []
  keys.each do |key_element|
    data.each do |data_element|
      if data_element[key_element[:first_name]]
          merged_person = data_element[key_element[:first_name]]
          merged_person[:first_name] = key_element[:first_name]
          merged_array << merged_person
      end
    end
  end
  merged_array
end

def find_cool(hashes)
  bingo_arry = []
  hashes.each do |hash|
    hash.each do |k,v|
      if v == "cool"
        bingo_arry << hash
      end
    end
  end
  bingo_arry
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |key, hash|
    hash.each do |k,v|
      if new_hash[v]
        new_hash[v] << key
      else
        new_hash[v] = []
        new_hash[v] << key
      end
    end
  end
  new_hash
end
