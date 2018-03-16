require 'pry'

def begins_with_r(arr)
  output = true
  arr.each do | element |
    result = element.start_with? 'r' 
      if result == false 
        return false 
      end 
  end
  output
end

def contain_a(arr)
  output = []
  arr.each do | element |
    if element.include? ?a
      output.push(element)
    end 
  end
  output
end

def first_wa(arr)
  arr.each do | element |
    if element.to_s.start_with?("wa")
      return element
    end 
  end
end

def remove_non_strings(arr)
  output = []
  arr.each do | element |
    if element.class == String
      output.push(element)
    end 
  end
  output
end

def count_elements(arr)
  counted = []
  output = []
  arr.each do | element |
    alreadyIn = counted.include? (element)
    if alreadyIn == false
      counted.push(element)
      count = arr.count(element)
      output.push(element.merge :count => count)
    end
  end
  output
end

def merge_data(keys, data)
  merged = []
  keys.each do | k |
    data.each do | d |
      k.each do | first_name_key, first_name_value |
        d.each do | name, info | 
          # binding.pry
          if first_name_value == name
            merged.push(k.merge info)
          end
        end
      end
    end
  end
  return merged
end

def find_cool(arr)
  output = []
  arr.collect do | element |
    element.each do | k, v |
      if v == "cool"
        output << element
      end
    end
  end
  return output
end

def organize_schools(data)
  organized_schools = {}
  
  data.each do | school_name, location_data |
    location_data.each do | location_key, location_name |
      organized_schools[location_name] = []
    end
  end
  
  data.each do | school_name, location_data |
    location_data.each do | location_key, location_name |
      organized_schools[location_name] << school_name
    end
  end
  
  return organized_schools
end



