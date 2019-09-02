def begins_with_r(arr)
  !arr.any?{|str| str[0].downcase != 'r'}
end

def contain_a(arr)
  arr.select{|str| str.include?('a')}
end

def first_wa(arr)
  arr.each do |str|
    return str if str[0, 2].downcase == 'wa' if str.length >= 2
  end
  nil
end

def remove_non_strings(arr)
  arr.delete_if{|i| !i.instance_of?(String)}
end

def count_elements(arr)
  counts = Hash.new
  i = 0
  while i < arr.length
    if counts[arr[i][:name]] == nil
      counts[arr[i][:name]] = 1
    else
      counts[arr[i][:name]] += 1
    end
    i += 1
  end

  output = []
  counts.keys.each do |name|
    output << {:name => name, :count => counts[name]}
  end
  output
end

def merge_data(keys, data)
  merged = []
  keys.each_with_index do |i, index|
    new_hash = Hash.new
    merged << i.merge(data[0][i[:first_name]]) #data[0] -- data is an array with one element?
  end
  merged
end

def find_cool(arr)
  cool = []
  i = 0
  while i < arr.length
    cool << arr[i] if arr[i][:temperature] == "cool"
    i += 1
  end
  cool
end

def organize_schools(schools)
  school_names = schools.keys
  organized = Hash.new
  school_names.each do |school_name|
    loc = schools[school_name][:location]
    if organized[loc] == nil
      organized[loc] = [school_name]
    else
      organized[loc] << school_name
    end
  end
  organized
end
