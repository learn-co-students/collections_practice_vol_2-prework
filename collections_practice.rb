require 'pry'

def begins_with_r(array)
  bingo = 0
  array.collect do |tools|
    if tools[0] == "r"
      bingo += 1
    end
  end
  bingo == array.count ? true : false
end

def contain_a(array)
  a_powers = []
  array.each do |power|
    if power.include? "a"
      a_powers << power
    end
  end
  a_powers
end

def first_wa(array)
  array.each do |word|
    if word[0] == "w" && word[1] == "a"
      return word
    end
  end
end

def remove_non_strings(array) #help
  removed = array.map do |word|
    if word.is_a?(String)
      word
    end
  end
  removed.compact
end

def count_elements(array) #help
  counter = []
  array.each do |name|
    name.each do |key, value|
      if counter.include?(name)
        binding.pry
        :count
      else
      counter << {:name => value, :count => 1}
      end
    end
  end
  counter
end

def merge_data(keys, data) #help
  keys.map do |first_name|
    data.map do |info|
      info.map do |person_info|
      end
    end
  end
end
