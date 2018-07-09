# your code goes here
def begins_with_r(arr)
  arr.all? {|el| el.downcase.start_with?("r")}
end

def contain_a(arr)
  arr.select {|el| el.include?("a")}
end

def first_wa(arr)
  arr.find {|el| el.downcase[0..1] == "wa"  }
end

def remove_non_strings(arr)
  arr.select {|el| el.class == String}
end

def count_elements(arr)
  res = []
  arr.each do |el|
    res_el = {}
    res_el[el.keys[0]] = el.values[0]
    res_el[:count] = arr.count(el)
    res << res_el
  end
  res.uniq
end

def merge_data(keys, data)
  res =[]
  data[0].each do |name, hash|
    res_el = {}
    res_el[:first_name] = name
    hash.each do |k, v|
      res_el[k] = v
    end
    res << res_el
  end
  res
end

def find_cool(arr)
  res = []
  arr.each do |hash|
    res << hash if hash[:temperature] == "cool"
  end
  res
end

def organize_schools(hash)
  res = {}
    hash.each do |school, location_hash|
      if res.key?(location_hash.values[0])
        res[location_hash.values[0]] << school
      else
        res[location_hash.values[0]] = [school]
      end
    end
  res
end