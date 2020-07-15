# def begins_with_r(array)
#   array.map do |element|
#     if element[0] != "r"
#       return false
#     end
#   end
#   true
# end

def begins_with_r(array)
  array.all? { |word| word.start_with? "r" }
end

# def contain_a(array)
#   a_array = []
#   array.each { |element| a_array << element if element.include?("a") }
#   a_array
# end

def contain_a(array)
  array.select { |word| word.include? "a" }
end

def first_wa(array)
  array.find { |word| word.to_s.start_with? "wa" }
end

# def remove_non_strings(array)
#   string_array = []
#   array.map { |element| string_array << element if element.is_a?(String) }
#   string_array
# end

# def remove_non_strings(array)
#   array.reject { |element| element.class != String }
# end

def remove_non_strings(array)
  array.select { |element| element.class == String }
end

def count_elements(array)
  new_array = []

  array.each do |person|
    # match = find_name_match(person[:name], new_array)
    match = new_array.find { |new_person| new_person[:name] == person[:name] }
    if match
      match[:count] += 1
    else
      new_array << { name: person[:name], count: 1 }
    end
  end

  new_array
end

# private def find_name_match (name, array)
#   array.find { |person| person[:name] == name }
# end

# def merge_data(keys, data)
#   result = keys.map do |person|
#     # Match the value of person[:first_name] to the corresponding key in data
#     puts person[:first_name]
#     person_attributes = data.find { |person_data| person_data.keys[0] == person[:first_name].to_s }
#     puts person_attributes
#     # print {:first_name => person[:first_name].to_s}
#     # puts person_attributes
#     {first_name: person[:first_name], **person_attributes[person[:first_name]]}
#       # **person_attributes[person[:first_name].to_s]}
#
#   end
#
#
# end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  array.select { |person| person[:temperature] == "cool" }
end

# def organize_schools(schools)
#   school_hash = {}
#   locations = schools.each do |school, value|
#     key = schools[school][:location]
#     value = school
#     [] << school_hash[value] = key
#   end
#   print school_hash
#   school_hash
#   school_hash.invert
# end

def organize_schools(schools)
  school_hash = {}
  schools.each do |school, value|
    location = value[:location]
    if school_hash[location]
      school_hash[location] << school
    else
      school_hash[location] = []
      school_hash[location] << school
    end
  end
  school_hash
end
