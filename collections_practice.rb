require 'pry'
def begins_with_r(tools)
if tools.each do |element|
  while element.start_with?("r") == false
    return false
  end
end
end
true
end

def contain_a(tools)
array=[]
if tools.each do |element|
  if element.include?("a")
    array << element
  end
end
end
array
end

def first_wa(tools)
  counter = 0
  if counter < 1
    tools.each do |element|
      if element.to_s.start_with?("wa") == true
        return element
        counter += 1
      end
    end
  end
end

def remove_non_strings(tools)
array=[]
  tools.each do |element|
      if element.is_a?(String)
        array << element
      end
  end
array
end

def count_elements(array)
  array.each do |element|
    element[:count] = 0
    name = element[:name]
    array.each do |data|
    if data[:name] == name
      element[:count] += 1
    end
  end
end
return array.uniq
end

def merge_data(keys, data)
data[0].values.collect.with_index do |value, index|
  keys[index].merge(value)
  end
end

def find_cool(data)
array=[]
  data.each do |first|
    first.each do |key, value|
      if key == :temperature && value === "cool"
        array.push(first)
      end
    end
  end
#binding.pry
array
end

def organize_schools(schools)
  newHash = {}
  newHash["NYC"] = []
  newHash["SF"] = []
  newHash["Chicago"] = []
    schools.each do |school, location_hash|
      location_hash.each do |key, location|
        if location == "NYC"
          newHash["NYC"].push(school)
        elsif location == "SF"
          newHash["SF"].push(school)
        elsif location == "Chicago"
          newHash["Chicago"].push(school)
        end
      end
    end
  newHash
end
