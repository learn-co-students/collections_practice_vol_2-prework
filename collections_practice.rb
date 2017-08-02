def begins_with_r(array)
  array.all? do |element|
    element.start_with? 'r'
  end
end

def contain_a(array)
  array.select { |e| e.include?('a') }
end

def first_wa(array)
  array.find { |e| e.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  array.select { |e| e.instance_of?(String)}
end

def count_elements(array)
  array
    .group_by { |h| h[:name] }
    .map { |k, v| {name: k, count: v.size } }
end

def merge_data(keys, data)
  keys.map do |hash|
    index = data.find_index { |hsh| hsh.has_key?(hash[:first_name]) }

    if !index.nil?
      data[index][hash[:first_name]].merge(:first_name => hash[:first_name])
    end
  end
end

def find_cool(array)
  array.select { |hash| hash[:temperature] == 'cool' }
end

def organize_schools(schools)
  hash = Hash.new() { |h,k| h[k] = [] }
  schools.each_with_object(hash) { |(k, v), obj| obj[v[:location]] << k }
end
