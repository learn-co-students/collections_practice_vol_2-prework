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

def merge_data (arr1, arr2)
  newarr = []
arr1.each do |y|
  firstname = y[:first_name]
  arr2.each do |x|
    x.keys.each do |z|
      if(z == firstname)
        info = x[z]
        person = {}
        person[:first_name] = firstname
        info.keys.each do |a|
        person[a]=info[a]
        end
        newarr.push(person)
      end
    end
  end
end
return newarr

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
