# your code goes here
def begins_with_r(arr)
  result = true
  arr.each do |el|
    result = false if el[0] != "r"
  end
  result
end

def contain_a(arr)
  new_arr = []
  arr.each do |el|
    new_arr << el if el.include?("a")
  end
  new_arr
end

def merge_data(key, value)
  bucket = []
  key.each do |person_name|
    name = person_name[:first_name]
    value.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        bucket << merged_person
      end
    end
  end
  bucket
end


def count_elements(arr)
  arr.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    arr.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
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


def first_wa(array)
  first_wa = nil
  array.each do |el|
    if el.match(/wa/)
      first_wa = el
      break
    end
  end
  first_wa
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

def remove_non_strings(array)
  bucket = []
  array.each do |el|
    bucket << el if el.is_a?(String)
  end
  bucket
end

def find_cool(array)
  bucket = []
  array.each do |el|
    bucket << el if el[:temperature] == "cool"
  end
  bucket
end
