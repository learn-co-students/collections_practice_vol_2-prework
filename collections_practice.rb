def begins_with_r(array)
  counter = 0
  array.each do |item|
    if item.start_with? "r", "R"
      counter += 1 
    end
  end
    if counter == array.length
      return true 
    else 
      return false 
    end 
end

def contain_a(array)
  holding_array = []
  array.each do |item|
    if item.include?("a")
      holding_array.push(item)
    end
  end
  holding_array
end

def first_wa(array)
   array.each do |item|
    if item.match(/wa/)
      return item
    end
  end
end

def remove_non_strings(array)
  answer_array = []
  array.each do |item|
    if item.is_a?(String)
      answer_array.push(item)
    end
  end
  answer_array
end

def count_elements(array)
  answer_hash = array.each do |item|
    item[:count] = array.count(item)
  end
  answer_hash.delete_at(1)
  answer_hash
end

def merge_data(keys, data)
   data[0].values.map.with_index do |v, i|
    keys[i].merge(v)
  end
end

def find_cool(hash)
  answer_array = []
  hash.each do |item|
    if item[:temperature] == "cool"
      answer_array.push(item)
      end
    end
    answer_array
end

def organize_schools(schools)
  answer_hash = { }
  schools.values.each do |item|
    item.each do |location, city|
      answer_hash[city] = [ ]
    end
  end
  schools.each do |key, value|
      if value[:location] == "NYC"
      	answer_hash["NYC"] << key
      elsif value[:location] == "SF"
        answer_hash["SF"] << key
      elsif value[:location] == "Chicago"
       answer_hash["Chicago"] << key
      end
    end
   answer_hash
end
