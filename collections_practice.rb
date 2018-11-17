def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|letter_a| letter_a.include?("a")}
end

def first_wa(array)
  array.each do |wa|
    if wa.to_s.start_with?("wa")
      return wa
    end
  end
end

def remove_non_strings(array)
  array.select {|x| x.class == String}
end

def count_elements(array)
  array.each do |og_hash|
    og_hash[:count] = 0
    name = og_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        og_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  merged_array = []
  keys.each do |person_name|
    name = person_name[:first_name]
  data.each do |person_data|
    if person_data[name]
      merged_person = person_data[name]
      merged_person[:first_name] = name
      merged_array << merged_person
    end
  end
  end
  merged_array
end

def find_cool(data)
  new_array = []
  data.each do |person_info|
    person_info.each do |key, value|
      if value == "cool"
        new_array << person_info
      end
    end
  end
  new_array
end


def organize_schools(hash)
  organized_hash = {}
  hash.each do |school, location_hash|
    location = location_hash[:location]
    organized_hash[location] ||= []
    organized_hash[location] << school
  end
  organized_hash
end
