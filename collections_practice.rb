def begins_with_r(array)
  array.each { |str|
    str = str.split("")
    if str[0] != "r"
      return false
    end
  }
  return true
end

def contain_a(array)
  a_words = []
  array.each { |str|
    str = str.split("")
    str.each { |char|
      if char == "a"
        str = str.join
        a_words << str
      end
    }
  }  
  a_words
end

def first_wa(array)
  first_wa = ""
  array.find { |str|
    str = str.to_s
    str = str.split("")
    if str[0] == "w"
      if str[1] == "a"
        str = str.join
        first_wa = str
      end
    end  
  }
  first_wa
end

def remove_non_strings(array)
  strings = []
  array.each { |element|
    if element.class == String
      strings << element
    end
  }
  strings
end

def count_elements(array)
  elements = []
  counted_elements = []
    array.each_with_index { |name, idx|
      array[idx].each { |category, name|
        elements << name
      }
    }
  elements.each { |name|
    name_hash = Hash.new
    name_hash[:name] = name
    name_hash[:count] = elements.count(name)
    counted_elements << name_hash
  }
  counted_elements.uniq
end

def merge_data(keys_arr, data_arr)
  merged_data = []
  
  keys_arr.each_with_index { |key_arr_name, idx|
    keys_arr[idx].each {|category, kname|
      
      data_arr.each_with_index { |data_arr_name, didx|
        data_arr[didx].each { |first_name, data|
        
        if first_name == keys_arr[idx][category]
          data_arr[didx][first_name][:first_name] = kname
          merged_data << data_arr[didx][first_name]
        end
        }
      }
    }
  }
  merged_data
end

def find_cool(array)
  cools = []
  array.each { |person|
    person.each { |category, data|
      if category == :temperature
        if data == "cool"
          cools << person
        end
      end  
    }
  }
  cools
end

def organize_schools(hash)
  organized_schools = {}
  hash.each { |name, data|
    hash[name].each { |category, location|
      if organized_schools[location] == nil
        organized_schools[location] = []
      end
      organized_schools[location] << name
    }
  }
  organized_schools
end