require 'pry'


def begins_with_r(tools)
new_array = tools.uniq {|x| x.start_with?("r")}
 if new_array.size == 1 
   return true 
 else 
   false
 end
end

def contain_a(array)
  newy = []
  array.each do |x|
    if x.include?("a")
      newy << x 
    end
  end
  newy
end

def first_wa(array)
  array.each do |x|
    y = x.to_s
    if y.start_with?("wa")
      return y
    end
  end
end

def remove_non_strings(array)
  array.delete_if {|x| x.is_a?(String) == false}
array
end

def count_elements(array)
  counts = Hash.new(0)
  array.each {|x| counts[x] += 1}
  return_array = []
  counts.each do |element, num|
    element.each do |k, v|
    return_array << {k => v, :count => num}
  end
end
  return_array

end
  
def merge_data(keys, data)
   merged_array = []
   keys.each do |key|
     data.each do |data_merger|
       data_merger.each do |merger_key, merger_value|
         if merger_key == key[:first_name]
           merged_array << key.merge(merger_value)
         end
       end
     end
   end
  merged_array 
end

def find_cool(cool)
  cool.select {|x| 
 x[:temperature] == "cool"}
end

def organize_schools(schools)
  new_hash = {}
  schools.collect {|key, value| new_hash[value[:location]] = []}
  new_hash.each {|k, v| schools.each {|k1, v1| if k == v1[:location] then v << k1 end}}
end






  