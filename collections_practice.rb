require 'pry'

# your code goes here
def begins_with_r(arr)
  arr.each do |el|
    return false if el.downcase[0] != 'r'
  end
  return true
end

def contain_a(arr)
  arr.select do |el|
    el.include?('a')
  end
end

def first_wa(arr)
  arr.find do |el|
    el.start_with?('wa') if el.is_a?(String)
  end
end

def remove_non_strings(arr)
  arr.delete_if { |el| el if !(el.is_a?(String)) }
end

def count_elements(arr)
  new_arr = []

  arr.each do |el|
    new_arr << el.merge({count:0})
  end

  # binding.pry
  arr.each do |el|
    el.each do |key, val|
      new_arr.each do |new_el|
        new_el.each do |new_key, new_val|
          if key == new_key && val == new_val
            new_arr[new_arr.index(new_el)][:count] += 1
          end
          # binding.pry
        end
      end
    end
  end

  new_arr.uniq
end

def merge_data(data_one, data_two)
  new_data = []

  data_one.each do |el_one|
    data_two.each do |el_two|
      el_one.each do |key_one, data_one|
        el_two.each do |key_two, data_two|
          # binding.pry
          if data_one == key_two
            new_el = el_one.merge(data_two)
            new_data << new_el
          end
        end
      end
    end
  end
  new_data
end

def find_cool(arr)
  cool = []
  arr.each do |el|
    el.each do |key, val|
      if val == "cool"
        cool << el
      end
    end
  end
  cool
end

def organize_schools(hash)
  new_hash = {}

  hash.each do |key, val|
    val.each do |location, name|
      if !(new_hash.has_key?(name))
        new_hash[name] = [key]
      else
        new_hash[name] << key
      end
    end
  end
  new_hash
end
