require "pry-byebug"

def begins_with_r(array)
  result = true
  array.each do |word|
    if word[0] != 'r'
      result = false
      break
    end
  end
  result
end

def contain_a(array)
  result = []
  array.each do |word|
    word.split("").each do |letter|
      # binding.pry
      if letter == ('a')
        result << word
        break
      end
    end
  end
  result
end

def first_wa(array)
  array.each do |word|
    if word[0] == 'w' && word[1] == 'a'
      return word
    end
  end
end

def remove_non_strings(array)
  result = []
  array.each_with_index do |word, index|
    # binding.pry
    if word.class == String
      result << word
    end
  end
  result
end

def count_elements(array)
  counts = []
  array.each do |word|
    counts << {name: word[:name], count: array.count(word)}
  end
  counts.uniq
end

def merge_data(key, value)
  new_array = []
  key.each do |name|
    first_name = name[:first_name]
    # binding.pry
    value[0].each do |key, data|
      if key == first_name
        tmp = value[0][key]
        tmp[:first_name] = first_name
        new_array << tmp
        #binding.pry
      end
    end
  end
  new_array
end

def find_cool(array)
  result = []
  array.each do |data|
    if data[:temperature] == "cool"
      result << data
    end
  end
  result
end

def organize_schools(array)
  result = {}
  array.each do |name, location|
    current_location = location[:location]
    if result.has_key?(current_location)
      result[current_location] << name
    else
      result[current_location] = [name]
    end
  end
  result
end
