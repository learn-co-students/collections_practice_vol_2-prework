# your code goes here
def begins_with_r(array)
  array.each do |element|
    if element[0] != "r"
      return false
    end
  end
  
  return true
end

def contain_a(array)
  contain_a_array = []
  
  array.each do |element|
    if element.include?("a")
      contain_a_array.push(element)
    end
  end
  
  contain_a_array
end

def first_wa(array)
  array.each do |element|
    if element[0..1] == "wa"
      return element
    end
  end
end

def remove_non_strings(array)
  string_array = []
  
  array.each do |element|
    if element.class == String
      string_array.push(element)
    end
  end
  
  string_array
end

def count_elements(array)
  new_array = array.uniq
  
  new_array.each do |hash|
    hash[:count] = array.count(hash)
  end
        
  new_array
end

def merge_data(keys, data)
  merged_data = []
  
  keys.each do |keys_hash|
    keys_hash.each do |key_keys, value_keys|
      data.each do |data_hash|
        data_hash.each do |key_data, value_data|
          if value_keys == key_data
            merged_data.push(keys_hash.merge(value_data))
          end
        end
      end
    end
  end
  
  merged_data
end

def find_cool(cool)
  cool_array = []
  
  cool.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        cool_array.push(hash)
      end
    end
  end
  
  cool_array
end

def organize_schools(schools)
  organized_hash = {}
  
  schools.each do |school, loc_hash|
    loc_hash.each do |key, value|
      if organized_hash.has_key?(value)
        organized_hash[value] = organized_hash[value].push(school)
      else
        organized_hash[value] = [school]
      end
    end
  end
  
  organized_hash
end

schools= 
    {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
    }
  
  
  organize_schools(schools)