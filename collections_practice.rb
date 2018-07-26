require 'pry'

def begins_with_r(tools)
  tools.each do |word|
    if word.downcase[0] != 'r'
      return false
    end
  end
  return true
end

def contain_a(arrayIn)
  retArray = []
  arrayIn.each do |word|
    if word.include? 'a'
      retArray.push(word)
    end
  end

  return retArray
end

def first_wa(arrayIn)
  arrayIn.each do |word|
    if word[0] == 'w' && word[1] == 'a'
      return word
    end
  end
end

def remove_non_strings(arrayIn)
  arrayIn.delete_if{ |word| !(word.is_a? String) }
end

def count_elements(arrayIn)
  retArray = []
  arrayIn.each do |myHash|
    newName = myHash[:name]
    exists = false
    retArray.each do |myHash2|
      if myHash2[:name] == newName
        exists = true
        myHash2[:count] += 1
      end
    end
    if !exists
      newHash = {name: newName, count: 1}
      retArray.push(newHash)
    end
  end
  retArray
end

def merge_data(keys, data)
  retArray = []
  keys.each do |names|
    data.each do |info|

      newInfo = info[names[:first_name]]
      newInfo.each do |key, val|
        names[key] = val
      end
      retArray << names
    end
  end

  return retArray
end

def find_cool(arrayIn)
  retArray = []
  arrayIn.each do |myHash|
    if myHash[:temperature] == "cool"
      retArray.push(myHash)
    end
  end

  return retArray
end

def organize_schools(hashIn)
  retHash = Hash.new
  hashIn.each do |key, val|
    val.each do |key2, val2|
      if retHash[val[:location]]
        retHash[val[:location]] << key
      else
        retHash[val[:location]] = [key]
      end
    end
  end

  return retHash
end
