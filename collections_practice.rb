
def begins_with_r(array)
  array.all? do |i|
  i.chars.first == "r"
end
end

def contain_a(array)
  array.select do |i|
    i.include?("a")
  end
end

def first_wa(array)
  array.find do |i|
    i.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |i|
    !i.is_a?(String)
  end
end

def count_elements(array)
  array.group_by(&:itself).map{|k,v| k.merge(count: v.length) }
end

def merge_data(keys, data)
  data[0].values.map.with_index {|v, i| keys[i].merge(v)}
end

def find_cool(array)
  array.select { |i| i[:temperature] == "cool"}
end

def organize_schools(schools)
  schools.each_with_object({}) do |(name, data), res|
    (res[data[:location]] ||= []) << name
  end
end
