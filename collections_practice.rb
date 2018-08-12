require 'pry'

# your code goes here


def begins_with_r(array)
  array.all? do |word|
    word.start_with? "r"
  end
end

def contain_a(array)
  a_words = []
  array.map do |word|
    if word.include?('a')
      a_words << word
    end
  end
  a_words
end

def first_wa(array)
wa_word = ""
array.find do |word|
    if word.to_s.include?("wa")
    wa_word = word
  end
  end
  wa_word
end

def remove_non_strings(array)
  array_s = []

  array.each do |element|
    if element.is_a?(String)
      array_s << element
    end
  end
  array_s
end

def count_elements(array)

  new_hash = array.each do |element|
    element[:count] = array.count(element)
  end

  new_hash.delete_at(1)

  new_hash

end


def merge_data(keys, data)

  data[0].values.map.with_index do |v, i|
    keys[i].merge(v)
  end

end

def find_cool(hash)

  cool_element = []

  hash.each do |element|
    if element[:temperature] == "cool"
      cool_element << element
    end

	end

  cool_element
end


def organize_schools(schools)

  new_hash = { }

  schools.values.each do |hash|
    hash.each do |location, city|
      new_hash[city] = [ ]
    end
  end

  schools.each do |keys, value|
      if value[:location] == "NYC"
      	new_hash["NYC"] << keys
      elsif value[:location] == "SF"
        new_hash["SF"] << keys
      elsif value[:location] == "Chicago"
        new_hash["Chicago"] << keys
      end
    end

  new_hash

end
