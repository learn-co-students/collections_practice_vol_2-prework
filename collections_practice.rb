def begins_with_r(arr)
  result = true
  arr.each { |item|
    if !item.start_with? ("r")
      result = false
    end
  }
  result
end


def contain_a(arr)
  result = []
  arr.each { |item|
    if item.include?("a")
      result.push(item)
    end
  }
  result
end

def first_wa(arr)
  arr.each { |item|
    if(item.to_s.include?("wa"))
      return item
    end
  }
end

def remove_non_strings(arr)
  result = []

  arr.each {|item|
    if(item.is_a? String)
      result.push(item)
    end
  }
  result
end


def count_elements(arr)
  result = []

  arr.each {|item|
    exists = false
    result.each {|result|
      if result[:name] == item[:name]
        result[:count] += 1
        exists = true
      end
    }
    if(exists == false)
      temp_item = item
      temp_item[:count] = 1
      result.push(temp_item)
    end
  }

  result
end


def merge_data(keys, values)
  result = []
  keys.each { |key|
    values[0].each{ |name, value|
      if name == key[:first_name]
        temp_item = value
        temp_item[:first_name] = key[:first_name]
        result.push(temp_item)
      end
    }
  }
  result
end

def find_cool(arr)
  result = []
  arr.each { |person|
    if person[:temperature] == "cool"
      result.push(person)
    end
  }
  result
end

def organize_schools(schools)
  result = {}
  schools.each{ |name, school|
    if !result.has_key?(school[:location])
      result[school[:location]] = []
    end
    result[school[:location]].push(name)
  }
  result
end
