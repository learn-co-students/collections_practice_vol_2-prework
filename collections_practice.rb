def begins_with_r(tools)
  tools.each do |tool|
    if !tool.to_s.start_with?("r")
      return false
    end
  end
  return true
end

def contain_a(arr)
  result_arr = []
  arr.each do |elem|
    if elem.to_s.include?("a")
      result_arr << elem
    end
  end
  result_arr
end

def first_wa(arr)
  arr.each do |elem|
    if elem.to_s.start_with?("wa")
      return elem
    end
  end
  return nil
end

def remove_non_strings(arr)
  new_arr = []
  arr.each do |elem|
    if elem.class == String
      new_arr << elem
    end
  end
  new_arr
end

def count_elements(arr)
  counts = {}
  results = []
  arr.each do |elem|
    if !counts[elem]
      counts[elem] = 0
    end
    counts[elem] += 1
  end
  counts.each do |obj,count|
    if obj.class == Hash
      obj[:count] = count
      results << obj
    else
      results << {:value => obj, :count => count}
    end
  end
  results
end

def merge_data(keys,data)
  merged_data = []
  keys.each do |key|
    fname = key[:first_name]
    key_data = {:first_name => fname}
    data.each do |item|
      if item.keys.include?(fname)
        item[fname].each do |data_key,data_value|
          key_data[data_key] = data_value
        end
      end
    end
    merged_data << key_data
  end
  merged_data
end

def find_cool(arr)
  new_arr = []
  arr.each do |elem|
    if elem[:temperature] == "cool"
      new_arr << elem
    end
  end
  new_arr
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school_name,properties|
    city = properties[:location]
    if !organized_schools[city]
      organized_schools[city] = []
    end
    if !organized_schools[city].include?(school_name)
      organized_schools[city] << school_name
    end
  end
  organized_schools
end
