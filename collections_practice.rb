def begins_with_r(array)
  array.each {|item|
    return false if item[0] != "r"
  }

  true
end

def contain_a(array)
  array.select {|item|
    item.include? "a"
  }
end

def first_wa(array)
  array.select {|item|
    item[0..1] == "wa"
  }.first
end

def remove_non_strings(array)
  array.select {|item|
    item.is_a? String
  }
end

def count_elements(array)
  new_array = array.uniq #unique items only
  new_array.each {|new_item|
    new_item[:count] = array.select{|item|
      new_item == item
    }.length
  }
  new_array
end

def merge_data(keys,data)
  new_array = []
  keys.each {|item|
    new_array << item
    data.each {|data_item|
      data_item[item[:first_name]].each {|k,v|
        item[k] = v
      }
    }
  }
  new_array
end

def find_cool(cool)
  cool.select {|item|
    item[:temperature] == "cool"
  }
end

def organize_schools(schools)
  locations = {}
  schools.each {|k,v|
    if !locations.has_key? v[:location]
      locations[v[:location]] = [k]
    else
      locations[v[:location]] << k
    end
  }

  locations
end
