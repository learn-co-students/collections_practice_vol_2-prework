require 'pry'

# your code goes here
def begins_with_r(arr)
  if arr.all? { |item| item.start_with?("r") == true}
      return true
    else
      return false
  end
end


def contain_a(arr)
  new_array = []
  arr.each do |item|
    if item.include?("a")
      new_array.push(item)
    end
  end
  return new_array
end

def first_wa(arr)
  new_array = []
  arr.each do |item|
    if item[0]=="w" && item[1]=="a"
      new_array.push(item)
    end
  end
  return new_array[0]
end

def remove_non_strings(arr)
  new_array = []
  arr.each do |item|
    if item.class == String
      new_array.push(item)
    end
  end
  return new_array
end

def count_elements(arr)
  count = []
  i=0
  new_hash = []

  arr.each do |item|
    item.each do |key, value|
      count.push(value)
    end
  end

  arr.each do |item|
    item.each do |key, value|
      new_hash.push({:"#{key}" => value})
      new_hash[i][:count] = 0
      i+= 1
    end
  end

new_hash = new_hash.uniq

  count.each do |iteration|
    new_hash.each do |item|
      item.each do |key, value|
        if iteration == value
          matching = new_hash.index {|h| h[:name] == value }
          new_hash[matching][:count] += 1
        end
      end
    end
  end
  return new_hash
end



def merge_data(keys, data)
  new_data = []
  data.each do |set|
    set.each do |data_key, data_value|
      keys.each do |key_set|
        key_set.each do |key_key, key_value|
          if data_key == key_value
            new_data.push(key_set.merge(data_value))
          end
        end
      end
    end
  end
  return new_data
end

def find_cool(arr)
  cool_arr = []
  i=0
  arr.each do |set|
    set.each do |key, value|
      if key == :temperature && value == "cool"
        cool_arr.push(set)
      end
      i += 1
    end
  end
  return cool_arr
end
#
def organize_schools(hash)
  # gather all locations into new array of cities
  cities = []
  hash.each do |school_name, info|
    info.each do |key, value|
      if key === :location
        cities.push(value)
      end
    end
  end
  cities = cities.uniq

  # create new hash with value for each city
  new_hash = {}
  cities.each do |city|
    new_hash["#{city}"] = []
  end

  # search hash for matches to each item in array of cities
  i=0
  cities.each do |city|
    hash.each do |school_name, info|
      info.each do |key, value|
        if key === :location && value === city
          new_hash["#{city}"].push(school_name)
        end
      end
    end
    i+=1
  end

 return new_hash

  # push name of school to each city in new hash
end


schoolhash = {
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

organize_schools(schoolhash)
