def begins_with_r(tools)
  tools.each do |x|
    if x[0].upcase != "R"
      return false
    end
  end
  return true
end

def contain_a(arr)
  a_arr = []
  arr.each do |x|
    if x.include?("a")
      a_arr << x
    end
  end
  a_arr
end

def first_wa(elements)
  elements.each do |x|
    if x[0] == "w" && x[1] == "a"
      return x
    end
  end
end

def remove_non_strings(arr)
  arr.reject {|x| x.class != String}
end

def count_elements(arr)
  count = []
  i = 0
  arr.each do |x|
    if !count.any? {|h| h[:name] == x[:name]}
      count[i] = {}
      count[i] = x
      count[i][:count] = arr.count(x)
      i += 1
    end
  end
  count
end

def merge_data(keys, data)
  arr = []
  i = 0
  keys.each do |x|
    arr[i] = {}
    arr[i] = x
    i += 1
  end
  h = 0
  data.each do |j|
    j.each do |k, l|
      arr[h].merge!(l)
      h += 1
    end
  end
  arr
end

def find_cool(temps)
  arr = []
  temps.each do |x|
    if x[:temperature] == "cool"
      arr.push(x)
    end
  end
  arr
end

def organize_schools(schools)
  hash = {}
  schools.each do |school, loc_hash|
    loc_hash.each do |loc, city|
      if hash.has_key?(city)
        hash[city] << school
      else
        hash[city] = []
        hash[city] << school
      end
    end
  end
  hash
end
