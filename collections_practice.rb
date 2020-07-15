# your code goes here
def begins_with_r(arr)
  arr.each do |word|
    if word[0] != 'r'
      return false
    end
  end
  true
end

def contain_a(arr)
  ls = []
  arr.each do |word|
    if word.include?("a")
      ls.push(word)
    end
  end
  ls
end

def first_wa(arr)
  arr.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(arr)
  arr.delete_if do |item|
    !(item.is_a? String)
  end
end

def count_elements(arr)
  arr.uniq.each do |el|
    el[:count] = arr.count(el)
  end
end

def merge_data(keys, data)
  arr = []
  keys.each_with_index do |key, val|
    arr.push(key.merge(data[0].values[val]))
  end
  arr
end

def find_cool(arr)
  [arr.find {|x| x[:temperature]=="cool"}]
end

def organize_schools(arr)
  new_hash = {}
  arr.each do |key, val|
    if !new_hash[val[:location]]
      new_hash[val[:location]] = [].push(key)
    else
      new_hash[val[:location]] << key
    end
  end
  new_hash
end
