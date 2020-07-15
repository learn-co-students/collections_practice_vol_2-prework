def begins_with_r(tools)
  tools.all? {
    |word| word[0] == "r"
  }
end

# def contain_a(arr)
#   output_arr = [];
#   arr.each do |element|
#     word = element.split('')
#      if word.any? {
#       |letter| letter == 'a' or letter == 'A'
#     } == true
#       output_arr << word.join('')
#     end
#   end
#   return output_arr
# end

def contain_a(arr)
  output_arr = []
  arr.collect do |element|
    if element.include?("a")
      output_arr << element
    end
  end
  return output_arr
end

def first_wa(hash)
  hash.each do |key, value|
    if key.to_s.start_with?('wa')
      return key
    elsif value.to_s.start_with?('wa')
      return value
    end
  end
end

def remove_non_strings(arr)
  arr.delete_if {
    |element| element.class != String
  }
end

def count_elements(arr)
  output_arr = [];
  arr.each do | element |
    counter = element[:count] = 1
    if output_arr.include?(element) == false
      output_arr << element
  elsif output_arr.include?(element)
      output_arr.map do |el|
        el[:count] += 1
      end
    end
  end
  output_arr
end

def merge_data(keys, data)
  i = 0
  while i < keys.length
    data.each do |element|
      element.each do |ka, va|
        if keys[i].has_value?(ka)
          keys[i].merge!(va)
        end
      end
    end
  i+=1
  end
  return keys
end

def find_cool(cool)
  i = 0
  output = [];
  while i < cool.length do
    cool[i].collect do | key, values |
      if values == "cool"
        output << cool[i]
      return output
      end
    end
    i+=1
  end
end

def organize_schools(schools)
  output = {}
  schools.each do |key, location_hash|
    location_hash.each do |k, location|
      if !output.has_key?(location)
        output[location] = [key]
      elsif output.has_key?(location)
        output[location] << key
      end
    end
  end
  output
end
