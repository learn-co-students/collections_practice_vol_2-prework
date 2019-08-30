# your code goes here
def begins_with_r(array)
  flag = true
  array.each { |i| flag = false if i[0] != "r" }
  flag
end

def contain_a(array)
  array_a = []
  array.each { |i| if i.include? "a"
    array_a << i
  end
}
  array_a
end


def first_wa(array)
  first_wa = nil
  array.each do |i|
    if i.match(/wa/)
      first_wa = i
      break
    end
  end
  first_wa
end

def remove_non_strings(array)
  string_array = []
  array.each { |i| if i.is_a?(String)
      string_array << i
    end
  }
  string_array
end


def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

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
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
