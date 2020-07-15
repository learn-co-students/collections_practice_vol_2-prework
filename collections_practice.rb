def begins_with_r(array)
  array.each do |element|
    return false if element.start_with?("r") == false
  end
  
  true
end

def contain_a(array)
  temp = []
  
  array.each do |element|
    temp << element if element.include?("a") == true
  end
  
  temp
end

def first_wa(array)
  array.each do |element|
    return element if element.to_s.start_with?("wa") == true
  end
end
  
def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
  new_array = []
  
  array.each do |element|
    if new_array.length == 0 || (new_array.last)[:name] != element[:name]
      element.each do |key, value|
        new_array << {key => value, :count => 1}
      end
    else
      (new_array.last)[:count] += 1
    end
  end
  
  new_array
end

def merge_data(keys, data)
  hash = keys
  
  hash.each do |element|
    data.each do |data_element|
      data_element.each do |data_key, data_value|
        if element[:first_name] == data_key
          data_value.each do |data_value_key, data_value_value|
            element[data_value_key] = data_value_value
          end
        end
      end
    end
  end
  
  hash
end

def find_cool(cool)
  array = []
  
  cool.each do |element|
    element.each do |key, value|
      if value == "cool"
        array << element
      end
    end
  end
  
  array
end

def organize_schools(schools)
  hash = {}
  
  schools.each do |key, value|
    if hash[value[:location]] == nil
      hash[value[:location]] = [key]
    else
      hash[value[:location]] << key
    end
  end
  
  hash
end
  
  
