

def begins_with_r(array)
  rChecker = []
  array.each do |word|
    rChecker.push(word[0])
  end
  if rChecker[0] == 'r' && rChecker[1] == 'r' && rChecker[2] == 'r'
    return true
  else
    return false
  end
end

def contain_a(array)
  array.select { |str| str.include?('a') }
end

def first_wa(array)
  array.any? do |word|
    if word[0..1] == 'wa'
      return word
    end
  end
end

def remove_non_strings(array)
  newArr = []
  array.any? do |word|
     if word.is_a? String
       newArr.push(word)
     end
  end
  return newArr
end

def count_elements(array)
  array.group_by(&:itself).map{ |k, v| k.merge(count: v.length) }
end

def merge_data(keys, data)
  data[0].values.map.with_index { |v, i| keys[i].merge(v) }
end

def find_cool(cool)
  cool_hashes = []
  cool.each do |hash|
    hash.each do |k, v|
      if k == "cool"
        cool_hashes.push(hash)
      end
    end
  end
  cool_hashes
end
