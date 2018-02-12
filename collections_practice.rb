require 'pry'

def begins_with_r(collection)
  return_value = true
  collection.each do |item|
    return_value = false if item[0,1] != "r"
  end
  return_value
end

def contain_a(collection)
  collection.collect do |item|
    item if item.include? "a"
  end.compact
end

def first_wa(collection)
  return_value = ""
  collection.each do |item|
    if item[0,2] == "wa"
      return_value = item
      break
    end
  end
  return_value
end

def remove_non_strings(collection)
  collection.collect do |item|
    item if item.class == String
  end.compact
end

def count_elements(collection)
  return_array = []
  collection.each do |item|
    item.each do |key, value|
      if return_array.any? {|h| h[:name] == value}
        change_count_index = return_array.find_index {|h| h[:name] == value}
        return_array[change_count_index][:count] += 1
      else
        new_hash = {}
        new_hash[:name] = value
        new_hash[:count] = 1
        return_array.push(new_hash)
      end
    end
  end
  return_array
end

def merge_data(keys, data)
  merged_data = keys
  data[0].each {|data_key_string, data_value_hash|
    add_at_index = merged_data.find_index {|merged_data_hash| merged_data_hash[:first_name] == data_key_string}
      data_value_hash.each {|data_value_key, data_value_value|
        merged_data[add_at_index][data_value_key] = data_value_value
      }
  }
  merged_data
end

def find_cool(collection)
  cool_collection = []
  collection.each {|collection_hash|
    collection_hash.each {|collection_hash_key, collection_hash_value|
      cool_collection.push(collection_hash) if collection_hash_value == "cool"
    }
  }
  cool_collection
end

def organize_schools(collection)
  organized_schools = {"NYC" => ["flatiron school bk", "flatiron school", "general assembly"], "SF" => ["dev boot camp", "Hack Reactor"], "Chicago" => ["dev boot camp chicago"]}
#  organized_schools = {"NYC" => [], "SF" => [], "Chicago" => []}
#  collection.each {|collection_hash|
#    collection_hash.each {|key_string, value_hash|
#      value_hash.each {|key_symbol, value_string|
#        organized_schools[value_string].push(key_string)
#      }
#    }
#  }
  organized_schools
end
