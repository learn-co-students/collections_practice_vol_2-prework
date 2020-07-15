def begins_with_r(array)
  array.all? {|x| x.start_with?("r")}
end

def contain_a(array)
  array.select {|x| x.include?("a")}
end

def first_wa(array)
  array.find {|x| x.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.select {|x| x == x.to_s}
end

def count_elements(array)
  result = []
  counted = []

  array.each do |hash|
    count = array.count(hash)
    hash[:count] = count
    result << hash if !counted.include?(hash[:name])
    counted << hash[:name]
  end
  result
end

def merge_data(keys, data)
  result = []

  keys.each do |key_hash|
    key_hash.each do |k, v|
      name = v
      data.each do |set_hash|
        set_hash.each do |k, v|
          result << key_hash.merge(set_hash[k]) if name == k
        end
      end
    end
  end
  result
end

def find_cool(array)
  array.each do |set|
    return [set] if set.values.include?("cool")
  end
end

def organize_schools(hash)
  result = {}

  hash.each do |school, location_hash|
    city = location_hash[:location]
    if result[city]
      result[city] << school
    else
      result[city] = [school]
    end
  end
  result
end
