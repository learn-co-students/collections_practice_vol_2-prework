# your code goes here
require 'pry'
def begins_with_r(data)
rtn = true
data.each do |x|
  if x[0] == "r"
    rtn = true
  else
  rtn = false
  end
end
return rtn
end

def contain_a(data)
  array = []
data.each do |x|
  if x.include?("a")
    array.push(x)
  end
end
return array
end

def first_wa(data)
  data.each do |x|
    if x.match(/wa/)
      return x
    end
  end
end


def remove_non_strings(data)
  array = []
  data.each do |x|
      if x.is_a?(String)
        array.push(x)

    end
  end
return array
end

def count_elements(data)

  data.each do |x|
      x[:count] = 0
      name = x[:name]
      data.each do |y|
        if y[:name] == name
          x[:count] += 1
    end
    end
  end.uniq
  end

def merge_data(key, data)
  array = []
  key.each do |x|
    name = x[:first_name]
    data.each do |y|
      if y[name]
        merge = y[name]
        merge[:first_name] = name
        array.push(merge)
  end
  end
  end
  return array
end

def find_cool(data)
  array = []
  data.each do |x|
    if x[:temperature] == "cool"
      array.push(x)
  end

end
return array
end
def organize_schools(data)
  org = {}
  data.each do |x, y|
    loc = y[:location]
    if org[loc]
      org[loc].push( x)
    else
      org[loc] = []
      org[loc].push( x)    end
  end
  return org
end
