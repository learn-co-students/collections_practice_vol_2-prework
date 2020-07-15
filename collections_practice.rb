def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  array.find_all do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.collect do |element|
    if element.class == String
      element
    end
  end.compact
end

def count_elements(array)
  new_array = array.uniq
  new_array.collect do |hash|
    num = array.count(hash)
    hash[:count] = num
    hash
  end
end

def merge_data(data_one, data_two)
  new_array = []
  data_one.each do |hash_one|
    name = hash_one[:first_name]
    data_two.each do |hash_two|
      data = hash_two[name]
      data[:first_name] = name
      new_array << data
    end
  end
  new_array
end

def find_cool(array)
  array.collect do |hash|
    if hash[:temperature] == "cool"
      hash
    end
  end.compact
end

def organize_schools(hash)
  #school(hash)=> {location => city}
  new_hash = {}
  hash.each do |schools, locations|
    city = locations[:location]
    if new_hash[city]
      new_hash[city] << schools
    else
      new_hash[city] = [schools]
    end
  end
  new_hash
end
