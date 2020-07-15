# your code goes here

def begins_with_r(array)
  counter = 0
  array.each do |element|
    if element.start_with?('r')
      counter += 1
    end
  end
  if counter == array.length
    true
  else
    false
  end
end

def contain_a(array)
  array_to_return = []
  array.each do |element|
    element.each_char do |letter|
      if letter == 'a'
        array_to_return << element
      end
    end
  end
  array_to_return
end

def first_wa(array)
  wa_word = ''
  array.each do |element|
    if element.is_a?(String)
      if element.start_with?('wa')
        wa_word = element
        break
      end
    end
  end
  wa_word
end

def remove_non_strings(array)
  array_to_return = []
  array.each do |element|
    if element.is_a?(String)
      array_to_return << element
    end
  end
  array_to_return
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    array.each do |element|
      if element[:name] == hash[:name]
        hash[:count] += 1
      end
    end
  end
  array.uniq
end

def merge_data(keys, data)
  array_to_return = []
  keys.each do |key|
    new_name = key[:first_name]
    data.each do |data|
      if data[new_name] != nil
        merge = data[key[:first_name]]
        merge[:first_name] = key[:first_name]
        array_to_return << merge
      end
    end
  end
  array_to_return
end

def find_cool(array)
  array_to_return = []
  array.each do |element|
    if element.values.include?("cool")
      array_to_return << element
    end
  end
  array_to_return
end

def organize_schools(hash)
  hash_to_return = {}
  hash.each do |key, value|
    if hash_to_return[value[:location]]
      hash_to_return[value[:location]] << key
    else
      hash_to_return[value[:location]] = []
      hash_to_return[value[:location]] << key
    end
  end
  hash_to_return
end
