require 'pry'

def begins_with_r(array)
  i = 0
  test_array = []

  while i < array.length
    if array[i].start_with?("r")
      test_array << true
    else
      test_array << false
    end
    i += 1
  end
  if test_array == Array.new(array.length, true)
    true
  else
    false
  end
end

def contain_a(array)
  i = 0
  test_array = []

  while i < array.length
    if array[i].include?("a")
      test_array << array[i]
    end
    i += 1
  end
  test_array
end

def first_wa(array)
  arr1 = array.map {|x| x.to_s}
  arr1.find {|y| y.start_with?("wa")}
end

def remove_non_strings(array)
  arr1 = array.delete_if {|x| x.class != String }
end

def count_elements(array)
  array.group_by {|x| x[:name]}.values.map {|y| {name: y.first[:name], count: y.size}}
end

def merge_data(keys_arr, data_arr)
  merged_data =[]
  keys_arr.map {|x|
    data_arr.map {|y|
      if y.keys.include?(x.values[0])
        merged_data << x.merge(y[x.values[0]])
      end
    }
  }
  merged_data
end

def find_cool(array)
  cool = []
  array.each do |x|
    if x[:temperature] == "cool"
      cool << x
    end
  end
  cool
end

def organize_schools(hash)
  locations = hash.group_by {|x| x[1][:location]}.keys
  schools = hash.group_by {|x| x[1][:location]}.map {|y| y[1].flatten.delete_if{|z| z.class == Hash}}
  organized = {}

  i = 0
  while i < locations.length
    organized[locations[i]] = schools[i]
    i += 1
  end
  organized
end
