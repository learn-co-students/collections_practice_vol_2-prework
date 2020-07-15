require "pry"

# your code goes here
def begins_with_r(array)
  array.each do |item|
    if item[0] != "r"
      return false
    end
  end

  true
end

def contain_a(array)
  array.select do |item|
    item.include? "a"
  end
end

def first_wa(array)
  array.each do |item|
    string = item.to_s
    return item if string.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select do |item|
    item.class == String
  end
end

def count_elements(array)
  return_array = []

  array.each do |item|
    new_hash = {}
    duplicates = array.select {|i| i == item}

    item.each do |key, value|
      new_hash[key] = value
      new_hash[:count] = duplicates.size
      return_array << new_hash unless return_array.include?(new_hash)
    end
  end
  # array.each do |item|
  #   if duplicates.include?(item)
  #     return_array[return_array.index(item)][:count] += 1
  #   else
  #     duplicates << item
  #     item[:count] = 1
  #     return_array << item
  #     binding.pry
  #   end
  # end

  return_array
end

def merge_data(keys, data)
  return_array = []

  data[0].each do |name, details|
    new_hash = details
    keys.each do |item|
      item.each do |key, value|
        if value == name
          new_hash[key] = value
          return_array << new_hash
        end
      end
    end
  end


  # i = 0
  # while i < keys.size
  #   new_hash = data[i].collect {|key, value| value.merge(keys[i])}
  #   return_array << new_hash
  #   binding.pry
  #   i =+ 1
  # end
  #
  # return_array
  return_array
end

def find_cool(data)
  data.each do |item|
    item.each do |key, value|
      if value == "cool"
        return [item]
      end
    end
  end
end

def organize_schools(schools)
  new_hash = {}

  schools.each do |name, detail|
    location = detail[:location]
    if new_hash.has_key?(location)
      new_hash[location] << name
    else
      new_hash[location] = [name]
    end
  end
  new_hash
end
