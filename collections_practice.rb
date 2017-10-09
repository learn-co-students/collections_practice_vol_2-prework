# your code goes here
def begins_with_r(array)
  output = true
  array.each{|element| output = false if !(["r", "R"].include?(element[0]))}
  output
end

def contain_a(array)
  array.select{|element| element.include?("a")}
end

def first_wa(array)
  array[array.index{|element| element.class == String && element.start_with?("wa")}]
end

def remove_non_strings(array)
  array.select{|element| element.class == String}
end

def count_elements(array)
  output = array.uniq
  output.each{|element| element[:count] = array.count(element)}
  output
end

def merge_data(keys, data)
  keys.each do |element|
    data.each do |d|
      d[element[:first_name]].each{|key,value| element[key] = value} if d.has_key?(element[:first_name])
    end
  end
  keys
end

def find_cool(array)
  array.select{|element| element[:temperature]=="cool"}
end

def organize_schools(schools)
  output = {}
  schools.values.each{|element| output[element[:location]] = [] if !(output.has_key?(element[:location]))}
  schools.each{|key,value| output[value[:location]] << key }  
  output
end
