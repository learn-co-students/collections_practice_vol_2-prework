# your code goes here
def begins_with_r(array)
  array.all? { |i|
    i.start_with?("r")
  }
end

def contain_a(array)
  array.select { |i|
    i.include?("a")
  }
end

def first_wa(array)
  array.find { |i|
    i[0] == "w" && i[1] == "a"
  }
end

first_wa_array = ["candy", :pepper, "wall", :ball, "wacky"]
puts first_wa(first_wa_array)

def remove_non_strings(array)
  array.delete_if { |i|
    i.class != String
  }
end

def count_elements(array)
  unique_array = array.uniq
  unique_array.collect { |el|
    num = array.count(el)
    el.merge({:count => num})
  }
end

def merge_data(keys, data)
  index = 0
  keys.collect { |key|
    data_key = key[:first_name]
    data_atts = data[0].fetch(data_key)
    index += 1
    key.merge(data_atts)
  }
end

def find_cool(array)
  array.collect { |obj|
    obj.has_value?("cool") ? obj:nil
  }.compact
end

def organize_schools(schools)
  new_schools = {}
  schools.each { |k, v|
    new_schools.has_key?(v[:location]) ? (new_schools[v[:location]] << k) : new_schools[v[:location]] = [k]
  }
  new_schools
end
