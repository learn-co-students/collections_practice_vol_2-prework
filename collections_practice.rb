def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.select {|word| word.is_a?(String)}
end

def count_elements(array)
  names_array = array.uniq.collect {|person| {:name => person[:name], :count => array.count(person)}}
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |key|
    data.each do |data_hash|
      data_hash.each do |data_hash_key, data_hash_value|
        if data_hash_key == key[:first_name]
          merged_data << key.merge(data_hash_value)
        end
      end
    end
  end
  merged_data
end

def find_cool(cool)
  cool.select {|x| x[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school_name, data|
    if !organized_schools[data[:location]]
          organized_schools[data[:location]] = [school_name]
    else
      organized_schools[data[:location]] << school_name
    end
  end
  organized_schools
end
