def begins_with_r(array)
  array.all? {|item| item.start_with?('r')}
end

def contain_a(array)
  return_array = array.collect do |item|
    if item.include?("a")
      item
    end
  end
  return_array.compact
end

def first_wa(array)
  array.find { |item| item.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  return_array = array.collect do |item|
    if item.class == String
      item
    end
  end
  return_array.compact
end

def count_elements(array)
  return_array = []
  array.each do |hash|
    existing_hash = return_array.find {|h| h[:name] == hash[:name]}
    if !existing_hash.nil?
      index = return_array.index(existing_hash)
      return_array[index][:count] += 1
    else
      hash[:count] = 1
      return_array << hash
    end
  end
  return_array.compact
end

def merge_data(name_array, data_array)
  return_array = Array.new
  new_hash = Hash.new
  first_name_array = []

  name_array.each do |name_hash|
    name_hash.each do |key, values|
      first_name_array << values
    end
  end

  data_array.each do |data_hash|
    data_hash.each do |k, v|
      first_name_array.each do |name|
        if name == k
          v[:first_name] = name
        end
      end
      v.each do |key,values|
        new_hash[key] = values
      end
      return_array << new_hash
      new_hash = {}
    end
  end
  return_array
end

def find_cool(cool_array)
  return_array = cool_array.collect do |hash|
    if hash.values.include?("cool")
      hash
    end
  end
  return_array.compact
end

def organize_schools(schools)
  return_hash = {}
  schools.each do |school, location_hash|
    if !return_hash[location_hash[:location]]
      return_hash[location_hash[:location]] = []
    end
    return_hash[location_hash[:location]] << school
  end
  return_hash
end
