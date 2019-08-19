# your code goes here

def begins_with_r(arr)
  arr.all? {|tool| tool.start_with?('r')}
end

def contain_a(arr)
  arr.select {|word| word.include?('a')}
end

def first_wa(arr)
  arr.find {|word| word.to_s.start_with?('wa')}
end

def remove_non_strings(arr)
  arr.delete_if {|word| !word.is_a?(String)}
end

def count_elements(arr)
  arr.group_by(&:itself).map{|k,v| k.merge(count: v.length) }
end

def merge_data(keys, data)
  data[0].values.map.with_index {|v, i| keys[i].merge(v)}
end

def find_cool(arr)
  arr.select {|k| k[:temperature] == "cool"}
end

def organize_schools(schools)
  schools.each_with_object({}) do |(name, data), res|
    (res[data[:location]] ||= []) << name
  end
end
