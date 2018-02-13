# your code goes here
def begins_with_r(array)
  out = true
  array.each do |x|
    out = out && x[0]=="r"
  end
  out
end

def contain_a(array)
  out = []
  array.each do |x|
    if x.include?("a")
      out << x
    end
  end
  out
end

def first_wa(array)
  array.each do |x|
    if x.instance_of?(String)
      if x.include?("wa")
        return x
      end
    end
  end
end

def remove_non_strings(array)
  out = []
  array.each do |x|
   if x.instance_of?(String)
     out << x
   end
  end
  out
end

def count_elements(array)
  out = []
  index = 0
  while array.size > 0
    out << {}
    found = array.find_all {|i| i == array[0] }
    out[index][:count] = found.size
    out[index][array[0].keys[0]] = array[0].values[0]
    if found.size == array.size
      array = []
    else
      array.delete(array[0])
    end
    index += 1
  end
  out
end

def merge_data(keys, data)
  out = []
  i=0
  datavals = data[0].values
  while i < keys.length
    out << {}
    
    keys[i].each do |title, name|
      out[i][title] = name
    end
    
    datavals[i].each do |datum, about|
      out[i][datum] = about
    end
    i += 1
  end
  out
end

def find_cool(cool)
  out = []
  cool.each do |hash|
    if hash.values.include?("cool")
      out << hash
    end
  end
  out
end

def organize_schools(schools)
  out = {}
  names = schools.keys
  locations = []
  schools.each do |name, hash|
    hash.each do |key, location|
      locations << location
    end
  end
  while locations.length > 0
    out[locations[0]] = []
    
    schools.each do |name, hash|
      hash.each do |key, location|
        if location == locations[0]
          out[locations[0]] << name
        end
      end
    end
    locations.delete(locations[0])
  end
  out
end
