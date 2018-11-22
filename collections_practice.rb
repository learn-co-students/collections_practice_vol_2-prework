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
    # el.each do |key, val|
    #   if !new_arr.empty?
    #     new_arr.each do |new_el|
    #       if new_el[key] == val
    #         binding.pry
    #         new_arr[new_arr.index(new_el)][:count] += 1
    #       else
    #         new_arr << el.merge({count:1})
    #       end
    #     end
    #   else
    #     new_arr << el.merge({count:1})
    #   end
    # end
    new_arr << el
    new_arr[-1][:count] = 1
  end

  i = 0
  j = 1
  while i < new_arr.size
    while j < new_arr.size-1
      if new_arr[i] == new_arr[j]
        new_arr[i][:count] += 1
        new_arr.delete_at(j)
      end
      j += 1
    end
    i += 1
  end

  new_arr
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
