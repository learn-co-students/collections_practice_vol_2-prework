require 'pry'# your code goes here
def begins_with_r(arr)

arr.each do |k|
  if k[0] !="r"
    return false
  end
end
return true
end

def contain_a(arr)
  new_arr = []
  arr.map do |k|
    if k.include?("a")
      new_arr << k
    end
  end
  new_arr
end

def first_wa(arr)
  arr.each do |k|
    if k.to_s.include?("wa")
      return k
    end
  end
end


def remove_non_strings(arr)
  new_arr = []
  arr.each do |k|
    if k.is_a?(String)
      new_arr << k
    end
  end
  new_arr
end

def count_elements(hash)
  new_hash = {}
  new_arr = []
  count_hash = {}
  hash.each do |k|
    k.each do |ke, va|
      if count_hash.key?(va)
        count_hash[va] += 1
      else
        count_hash[va] = 1
      end
      #binding.pry
    end
  end
  #binding.pry
  count_hash.each do |k,v|
    new_hash = {name: k, count: v}
    new_arr << new_hash
    #binding.pry
  end
  new_arr
end

def merge_data(arr1, arr2)

  new_arr = []
  arr2.each do |k|
    k.each do |ke,va|
      new_arr << {first_name: ke}.merge(va)
      #binding.pry
    end
  end
  new_arr
end

def organize_schools(arr)
  loc_arr = []
  new_hash = {}
  arr.each do |k|
    if loc_arr.include?(k[1][:location])
    else
      loc_arr << k[1][:location]
      #binding.pry
    end
  end
  loc_arr.each do |v|
    new_hash[v] = []
  end
  #binding.pry
  new_hash.each do |k, v|
    #binding.pry
    arr.each do |ke,va|
      if k == va[:location]
        new_hash[k] << ke
        #binding.pry
      end
    end
  end
  #binding.pry
  new_hash
end

def find_cool(arr)
  new_arr = []
  arr.each do |k|
    if k[:temperature] != "sort of cool"
      new_arr << k
    end

  end
    new_arr
end
