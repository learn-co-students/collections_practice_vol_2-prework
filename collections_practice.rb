def begins_with_r(arr)
  arr.all? {|el| el[0] == "r"}
end

def contain_a(arr)
  arr.select {|el| el.include?("a")}
end

def first_wa(arr)
  arr.find {|el| el[0..1] == "wa"}
end

def remove_non_strings(arr)
  arr.select {|el| el == el.to_s}
end

def count_elements(arr)
  histogram = Hash.new(0)
  arr.each {|el| histogram[el] += 1}
  histogram.each {|k,v| k = (k[:count] = v)}.keys
end

def merge_data(keys, data)
  data[0].each do |name, items|
    keys.each do |el|
      el.each do |marker, nombre|
        data[0][name][marker] = nombre if name == nombre
      end
    end
  end
  data[0].values
end

def find_cool(arr)
  array = []
  arr.each do |el|
    el.each do |k,v|
      array << el if v == "cool"
    end
  end
  array
end

def organize_schools(arr)

  ordered_schools = {}
  hash = {}
  arr = []

  schools.each {|el| arr << el}
  arr.each {|el| hash[el.first] = el.last.values.first}

  cities = hash.values.uniq
  cities.each do |el|
    array = []
    hash.each {|k,v| array << k if v == el}
    ordered_schools[el] = array
  end

ordered_schools

end
