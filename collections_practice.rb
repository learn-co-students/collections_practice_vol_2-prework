# your code goes here
def begins_with_r(tools)
  tools.each do |el|
    if el.start_with?("r") === true
      next
    elsif el.start_with?("r") === false
      return false
    end
  end
  true
end

def contain_a(array)
  new_arr = []
  array.each do |el|
    if el.include?("a")
      new_arr << el
    end
  end
  return new_arr
end

def first_wa(array)
  array.each do |el|
    el = el.to_s
    if el.start_with?("wa")
      return el
      break
    end
  end
end

def remove_non_strings(array)
  new_arr = []
  array.each do |el|
    if el.is_a?(String) === true
      new_arr << el
    end
  end
  return new_arr
end

def count_elements(array)
  array.group_by(&:itself).map { |key, value| key.merge(:count => value.length)}
end

def merge_data(keys, data)
  keys.each do |k|
    data.each do |d|
      merged_data = k.merge(d)
    end
  end
merged_data

end

def find_cool(hashes)
  arr = []
  hashes.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        arr << hash
      end
    end
  end
  arr
end

def organize_schools(schools)
  organized_schools = {}
  cities = []
  chicago = []
  nyc = []
  sf = []
  schools.each do |name, location|
    location.each do |k, v|
      cities << v
      if v == "Chicago"
        chicago << name
      elsif v == "NYC"
        nyc << name
      elsif v == "SF"
        sf << name
      end
    end
  end
  cities = cities.uniq
  cities = cities.sort
  cities.each do |c|
    organized_schools[c] = []
  end
  organized_schools.each do |k, v|
    if k == "Chicago"
      organized_schools[k] = chicago
    elsif k == "NYC"
      organized_schools[k] = nyc
    elsif k == "SF"
      organized_schools[k] = sf
    end
  end


  puts chicago
  puts nyc
  puts sf
  puts cities
  puts organized_schools
  organized_schools

end
