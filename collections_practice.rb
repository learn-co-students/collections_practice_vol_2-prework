# your code goes here
def begins_with_r(array)
  array.all? {|el| el.start_with?("r")}
end

def contain_a(array)
  array.select {|el| el.include?("a")}
end

def first_wa(array)
  array.select {|el| el[0] + el[1] == "wa"}.first
end

def remove_non_strings(array)
  array.select {|el| el.class == String}
end

def count_elements(array)
  hash = Hash.new(0)
  array.each {|el| hash[el] += 1}
  result = hash.keys.map{|k| k[:count] = hash[k]; k};
end

def merge_data(keys, data)
  data[0].values.map.with_index {|v, i| keys[i].merge(v)}
end
#
def find_cool(cool)
  result = Array.new
  cool.each_index do |i|
    cool[i].each do |k,v|
      result << cool[i] if v == "cool"
    end
  end
  result
end

def organize_schools(schools)
  hash = {"NYC" => [], "SF" => [], "Chicago" => []}
  schools.each do |school,data|
    data.values.each do |location|
      if location == "NYC"
        hash["NYC"] << school
      elsif location == "SF"
        hash["SF"] << school
      elsif location == "Chicago"
        hash["Chicago"] << school
      end
    end
  end
  hash
end
