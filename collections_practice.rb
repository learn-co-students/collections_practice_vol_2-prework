def begins_with_r(array)
  truthy = 0
  array.each do |word|
    if word[0] != 'r'
      truthy += 1
    end
  end
  if truthy == 0
    true
  else
    false
  end
end

def contain_a(array)
  array_of_as = []
  array.each do |word|
    if word.include? "a"
      array_of_as << word
    end
  end
  array_of_as
end

def first_wa(array)
  wa_array = []
  array.each do |word|
    if word.to_s.include? "wa"
      wa_array << word
    end
  end
  wa_array[0]
end

def remove_non_strings(array)
  string_array = []
  array.each do |entry|
    if entry.class == String
      string_array << entry
    end
  end
  string_array
end

def count_elements(array)
  element_array = array.uniq
  element_array.each do |word|
    word[:count] = array.count(word)
  end
  element_array
end

def merge_data(keys, list)
  merged = []
  keys.each do |k|
    list.each do |data|
      data.each do |name, info|
        if k[:first_name] == name
          merged << k.merge(info)
        end
      end
    end
  end
  merged
end

def find_cool(cool_array)
  cool_dudes = []
  cool_array.each do |h|
    h.each do |name, status|
      if status == "cool"
        cool_dudes << h
      end
    end
  end
  cool_dudes
end


def organize_schools(schools)
  school_hash = {}
  schools.each do |school, location|
    location.each do |location, city|
      if school_hash.include?(city) == false
        school_hash[city] = []
        school_hash[city] << school
      else
        school_hash[city] << school
      end
    end
  end
  school_hash
end
