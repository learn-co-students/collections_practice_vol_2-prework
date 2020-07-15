def begins_with_r(tools)
  tools.all? {|tool| tool.start_with?("r")}
end

def contain_a(array)
  array.select {|x| x.include?('a')}
end

def first_wa(array)
  array.find {|x| x.to_s.start_with?('wa')}
end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String }
end

def count_elements(array)
  array.map! {|x| x.merge(:count => 1)}
  array.each_with_index do |x, i|
    if x == array[i+1]
      x[:count] += 1
      array.delete(array[i + 1])
    end
  end
end

def merge_data(keys, data)
  data[0].values.map.with_index {|x, i| keys[i].merge(x)}
end

def find_cool(cool)
  cool.select {|x| x[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, city_hash|
    location = city_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
