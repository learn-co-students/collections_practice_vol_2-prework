def begins_with_r(tools)
  tools.all?{|tool| tool[0].start_with?('r')}
end

def contain_a(elements)
  array = []
  elements.each do |element|
    if element.include? 'a'
      array << element
    end
  end
  return array
end

def first_wa(elements)
  elements.each do |element|
    if element.to_s.start_with?'wa'
      return element
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.class == String
      new_array << element
    end
  end
  return new_array
end

def count_elements(array)
  new_hash = Hash.new(0)

  array.each do |v|
    new_hash[v] += 1
  end

  new_array = []
  new_hash.each do |k, v|
    k[:count] = v
    new_array << k
  end

  return new_array
end

def merge_data(keys, data)
  array = []
  # puts "Keys: #{keys}. Data: #{data}."

  data.each do |hash|
    hash.each do |name, info|
      keys.each do |i_hash|
        i_hash.each do |key, value|
          if value == name
            info[key] = value
            array << info
          end
        end
      end
      # puts "Updated info: #{info}"
    end
  end
  # puts "Updated array: #{array}"
  return array
end

def find_cool(incoming_hash)
  # puts "Incoming hash: #{incoming_hash}"
  array = []
  incoming_hash.each do |hash|
    # puts "Inside IH: #{hash} "
    hash.each do |key, value|
      # puts "Inside H. Key: #{key}. Value: #{value}."
      if value == "cool"
        # puts "Found a cool. #{hash}"
        array << hash
      end
    end
  end
  return array
end

def organize_schools(incoming_hash)
  puts "Incoming Hash: #{incoming_hash}"
  new_hash = {}
  incoming_hash.each do |school_name, location|
    location.each do |key, value|
      sew = {value => []}
      new_hash = new_hash.merge(sew)
    end
  end

  incoming_hash.each do |school_name, location|
    location.each do |key, value|
      new_hash.each do |n_key, arr|
        if value == n_key
          arr << school_name
        end
      end
    end
  end

  puts "New Hash: #{new_hash}"
  return new_hash
end
