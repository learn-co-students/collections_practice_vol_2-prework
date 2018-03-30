def begins_with_r(array)
  q = 0
  i = 0
  until i == array.length
    if array[i].start_with?("r")
      q += 1
    end
    i += 1
  end
  if q == array.length
    return true
  else
    return false
  end
end

def contain_a(array)
  answerArray = []
  i = 0
  until i == array.length
    if array[i].include?("a")
      answerArray.push(array[i])
    end
    i += 1
  end
  return answerArray
end

def first_wa(array)
  i = 0
  until i == array.length
    if array[i].class == :symbol.class
       string = array[i].to_s
       if string.start_with?("wa")
         return string
       end
    elsif array[i].start_with?("wa")
      return array[i]
    end
    i += 1
  end
end

def remove_non_strings(array)
  newArray = []
  i = 0
  until i == array.length
    if array[i].class == "string".class
      newArray.push(array[i])
    end
    i += 1
  end
  newArray
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |data|
      if data[:name] == name
        hash[:count] += 1
      end
     end
  end#.uniq
  array.uniq
end

def merge_data(keys, data)
  data[0].values.map.with_index do |v, i|
    keys[i].merge(v)
  end
end

def find_cool(array)
  answerArray = []
  array.each do |hash|
    hash.each do |key, value|
      if key == :temperature && value == "cool"
        answerArray.push(hash)
      end
    end
  end
  return answerArray
end

def organize_schools(hash)
  newHash = {}
  newHash["NYC"] = []
  newHash["SF"] = []
  newHash["Chicago"] = []
  hash.each do |school, location_hash|
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
