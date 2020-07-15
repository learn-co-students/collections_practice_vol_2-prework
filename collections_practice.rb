def begins_with_r(array)
  flag = true
  array.each do |ele|
    flag = false if ele[0] != "r"
  end
  flag
end

def contain_a(array)
  new_array = []
  array.each do |ele|
    new_array << ele if ele.include?("a")
  end
  new_array
end

def first_wa(array)
  new_array = []
  array.each do |ele|
    new_array << ele if (ele[0] == "w" && ele[1] == "a")
  end
  new_array.first
end

def remove_non_strings(array)
  new_array = []
  array.each do |ele|
    new_array << ele if ele.is_a?(String)
  end
  new_array
end

def count_elements(array)
  array.each do |ele_hash|
    ele_hash[:count] = 0
    name = ele_hash[:name]
    array.each do |count_through_element|
      if count_through_element[:name] == name
        ele_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  new_array = []
  keys.each do |person_name|
    name = person_name[:first_name]
    data.each do |person_data|
      if person_data[name]
        new_hash = person_data[name]
        new_hash[:first_name] = name
        new_array << new_hash
      end
    end
  end
  new_array
end

def find_cool(array)
  new_array = []
  array.each do |ele|
    new_array << ele if ele[:temperature] == "cool"
  end
  new_array
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school_name, location_hash|
    location = location_hash[:location]
    if new_hash[location]
      new_hash[location] << school_name
    else
      new_hash[location] = []
      new_hash[location] << school_name
    end
  end
  new_hash
end
