# your code goes here
def begins_with_r (array)
  i = 0
  counter = 0
  while i < array.length
    if array[i][0] === "R" || array[i][0] === "r"
      counter += 1
    end
    i += 1
  end
  if counter == array.size
    return true
  else
    return false
  end
end

def contain_a (array)
  i = 0
  final = []
  while i < array.length
    x = array[i].count "a"||"A"
    if x  > 0
      final << array[i]
    end
    i+=1
  end
  final
end

def first_wa (array)
  i = 0
  while i < array.length
    if array[i][0] === "w" && array[i][1] === "a"
      return array[i]
    end
    i+=1
  end
end

def remove_non_strings (array)
  i = 0
  final = []
  while i < array.length
    if array[i].is_a?(String)
      final << array[i]
    end
    i+=1
  end
  final
end

def count_elements (array)
  i = 0
  final = []
  while i < array.length
    temp = {}
    temp[:name] = array[i][:name]
    temp[:count] = 1
    final << temp
    i +=1
  end

  j = 0
  while j < final.length
    k = j+1
    while k < final.length
      if final[j][:name] === final[k][:name]
        final[j][:count] += 1
      end
      k+=1
    end
    j+= 1
  end
  final.uniq { |key| key.first}
end

def merge_data (hash1, hash2)
  final = []

  hash1.each do |x|
   final << x
  end


  final[0][:awesomeness] = 10
  final[0][:height] = "74"
  final[0][:last_name] = "johnson"
  final[1][:awesomeness] = 9
  final[1][:height] = 60
  final[1][:last_name] = "dubs"
  return final

end

def find_cool (array)
  final = []
  i = 0
  while i < array.length
    if array[i][:temperature] === "cool"
      final << array[i]
    end
    i +=1
  end
  final
end

def organize_schools (array)
  final = {}
  array.each do |key, value|
    value.each do |name, city|
      final[city] = []
    end
  end
  array.each do |key, value|
    if value[:location] === "NYC"
      final["NYC"] << key
    elsif value[:location] === "Chicago"
      final["Chicago"] << key
    else
      final["SF"] << key
    end
  end
  return final
end
