# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word[0].downcase == "r"
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word[0].downcase == "w" && word[1].downcase == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.to_s != element
  end
end

def count_elements(array)
  hashes_array = []
  names_hash = Hash.new(0)

  array.each do |hash|
    hash.each do |key, value|
      names_hash[value] += 1
    end
  end

  names_hash.each do |name, count|
    name_count_hash = {}
    name_count_hash[:name] = name
    name_count_hash[:count]= count

    hashes_array << name_count_hash

  end

  hashes_array

end

def merge_data(keys, data)
  merged = []
  data[0].each do |key, value|
    value[:first_name] = key
    merged << value
  end

  merged

end

def find_cool(hashes)

  hashes.select do |hash|
    hash[:temperature] == "cool"
  end

end

def organize_schools(schools)
  sorted_schools = {}

  schools.each do |school, school_info|
    if sorted_schools[school_info[:location]] == nil
      sorted_schools[school_info[:location]] = [school]
    else
      sorted_schools[school_info[:location]] << school
    end
  end

  sorted_schools

end
