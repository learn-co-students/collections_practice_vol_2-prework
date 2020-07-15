
def begins_with_r(array)
  bool = true
  array.each do |item|
    if item[0] == "r"
      bool = true
    else
      return false
    end
  end
  bool
end

def contain_a(array)
  arr = []
  array.each do |item|
    if item.include? "a"
      arr << item
    end
  end
  arr
end

def first_wa(array)
  array.each do |item|
    if item[0..1] == "wa"
      return item
    end
  end
end

def remove_non_strings(array)
  arr = []
  array.each do |item|
    if item.class == String
      arr << item
    end
  end
  arr
end

def count_elements(array)
  ary = array.uniq
  ary.each_with_index do |uniq, index|
    ary[index][:count] = 0
    count = -1
    uniq.each do |name, val|
      array.each do |item|
        item.each do |name2, val2|
          if val == val2
            count += 1
            ary[index][:count] = count
          end
        end
      end
    end
  end
  ary
end

def merge_data(key_nest, data_nest)
  return_ary = []
  key_nest.each do |key_item|
    key_item.each do |key_key, key_val|
      name = key_val
      data_nest.each do |data_item|
        data_item.each do |data_name, data_att|
          if data_name == name
            data_att[:first_name] = name
            return_ary << data_att
          end
        end
      end
    end
  end
  return_ary
end

def find_cool(array)
  return_ary = []
  array.each do |item|
    item.each do |key, val|
      if key == :temperature && val == "cool"
        return_ary << item
      end
    end
  end
  return_ary
end

def organize_schools(school_hash)
  locations_ary = []
  return_hash = {}
  school_hash.each do |name, locale_hash|
    locale_hash.each do |key, location|
      locations_ary << location
    end
  end
  locations_ary.uniq!
  locations_ary.each do |item|
    return_hash[item] = []
  end
  return_hash.each do |uniq_loc, arr|
    school_hash.each do |name2, locale_hash2|
      locale_hash2.each do |key2, location2|
        if uniq_loc == location2
          arr << name2
        end
      end
    end
  end
  return_hash
end
