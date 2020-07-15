def begins_with_r(array)
  array.all? {|el| el[0].downcase == "r"}
end

def contain_a(array)
  array.select { |el| el.include? "a"}
end

def first_wa(array)
  array.find {|el| el.to_s.include? "wa"}
end

def remove_non_strings(array)
  array.select {|el| el.kind_of?(String)}
end

def count_elements(array)
  array.group_by(&:itself)
    .map{|k, v| k.merge(count: v.length)}
end

def merge_data(keys, data)
  output_arr = []
  data.each do |person_obj|
    person_obj.each do |k, v|
      v.merge!({:first_name => k})
      output_arr << v
    end
  end
  output_arr
end

def find_cool(hash)
  hash.select {|el| el.values.include? "cool"}
end

def organize_schools(schools)
  formatted_schools = {}
  
  schools.each do |k, v|
    if !formatted_schools.key? v[:location]
      formatted_schools[v[:location]] = []
      formatted_schools[v[:location]] << k
    else
      formatted_schools[v[:location]] << k
    end
  end
  
  formatted_schools
end
  