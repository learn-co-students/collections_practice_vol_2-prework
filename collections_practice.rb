# your code goes here

def begins_with_r(array)
  array.all? do |tool|
    tool[0] == "r"
  end
end

def contain_a(array)
  a_array = []
  array.each do |index|
    if index.include?("a")
      a_array << index
    end
  end
  a_array
end

def first_wa(array)
  array.each do |index|
    return index if index.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  new_array = []
  array.each_with_index do |item, index|
    if item.class == String
      new_array << item
    end
  end
  new_array
end

def count_elements(array)
  new_array = array.uniq
  output = []
  i = 0
  while i < new_array.length do
    item_count = array.count {|index| index == new_array[i]}
      output << {count: item_count}
      new_array[i].each do |key, value|
        output[i][key] = value
      end
      i += 1
  end
  output
end

def merge_data(arr1, arr2)
  new_array = []
  arr1.each_with_index do |name, index|
    arr2.each do |item|
      item.each do |key, value|
        if name.value?(key)
          new_hash = name.merge(value)
          new_array << new_hash
        end
      end
    end
  end
  new_array
end

def find_cool(array)
  array.each do |item|
    if item.value?("cool")
      return [item]
    end
  end
end

def organize_schools(hash)
  new_hash ={}
  hash.each do |key, value|
    value.each do |key2, value2|
      if new_hash.key?(value2)
        new_hash[value2] << key
      else
        new_hash[value2] = []
        new_hash[value2] << key
      end
    end
  end
  new_hash
end


















