def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  newArray =[]
  array.each do |element|
    if element.include?("a")
      newArray << element
    end
  end
  return newArray
end

def first_wa(array)
  array.each do |element|
    if element.to_s.start_with?("wa")
      return element.to_s
      break
    end
  end
end

def remove_non_strings(array)
  array.keep_if {|word| word.is_a?(String)}
  return array
end

def count_elements(array)
  arr = []
  array.each do |value|
    arr << {count: array.count(value), name: value[:name]}
  end
  arr.uniq
end

def merge_data(key, value)
  nData = []
  key.each do |person|
    name = person[:first_name]
    value.each do |data|
      newPName = data[name]
      newPName[:first_name] = name
      nData << newPName
    end
  end
  nData
end



def find_cool(array)
  nArray = []
  array.each do |value|
    if value[:temperature] == "cool"
      nArray << value
    end
  end
  nArray
end

def organize_schools(hash)
  nHash = {}
  hash.each do |school, location_info|
    sloc = location_info[:location]
    if nHash[sloc]
      nHash[sloc] << school
    else
      nHash[sloc] = []
      nHash[sloc] << school
    end
  end
  nHash
end
