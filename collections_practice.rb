# def begins_with_r(array)
#   array.each { |ele|
#     if ele[0] != "r"
#       return false
#     end
#   }
#   return true
# end

def begins_with_r(array)
  array.all?{ |ele|
    ele[0] == "r"
  }
end

def contain_a(array)
  array.find_all{ |ele|
    ele.include?("a")
  }
end

def first_wa(array)
  array.find { |ele|
    ele[0..1] == "wa"
  }
end

def remove_non_strings(array)
  array.delete_if { |ele|
    ele.class != String
  }
end

def count_elements(array)
  new_arr = array.uniq
  new_arr.collect { |hash|
    times = array.count(hash)
    hash[:count] = times
    hash
  }
end

def merge_data (arr1, arr2)
  new_arr = []
  arr1.each { |hash1|
    name = hash1[:first_name]
    arr2.each { |hash2|
      attributes = hash2[name]
      attributes[:first_name] = name
      new_arr << attributes
    }
  }
  new_arr
end

def find_cool(array)
  new_arr = []
  array.collect { |hash|
    if hash[:temperature] == "cool"
      new_arr << hash
    end
  }
  new_arr
end

def organize_schools(schools)
  new_hash = {}
  schools.each { |name, cities|
    city = cities[:location]
    if new_hash[city]
      new_hash[city] << name
    else
      new_hash[city] = [name]
    end
  }
  new_hash
end


