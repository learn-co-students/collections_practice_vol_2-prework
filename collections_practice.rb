# your code goes here
def begins_with_r(arr)
  arr.all? { |e| e[0] == 'r' }
end

def contain_a(arr)
  arr.select { |e| e.include?('a') }
  end

def first_wa(arr)
  arr.find { |e| e.to_s.start_with?('wa') }
end

def remove_non_strings(arr)
  arr.select { |element| element.is_a? String }
end

def count_elements(arr)
  new_arr = []
  arr.uniq.select do |key|
    key[:count] = arr.count(key)
    new_arr << key
  end
  new_arr
end

def merge_data(keys, data)
  keys.each do |k|
    data.each do |k2|
      k.merge!(k2[k[:first_name]])
    end
  end
end

def find_cool(hash)
  hash.select do |person, _temperature|
    person[:temperature] == 'cool'
  end
end

def organize_schools(data)
  location_hash = {}

  data.values.each do |value_hash|
    location = value_hash.values.first
    location_hash[location] = []
  end

  location_hash.each do |k, _v|
    data.each do |key, value|
      location_hash[k] << key if k == value[:location]
    end
  end

  location_hash
end
