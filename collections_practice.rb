def begins_with_r(array)
  var = true
  array.each do |x| var = false if !(x.start_with?("r")) end
  var
end

def contain_a(array)
  new = []
  array.each do |x| new << x if x.include?("a") end
  new
end

def first_wa(array)
  array.find do |x| x[0] == "w" && x[1] == "a" end
end

def remove_non_strings(array)
  array.delete_if do |x| !(x.is_a? String) end
end

def count_elements(array)
  new = []
  array.each do |x| new << x[:name] end
  array.each do |x| x[:count] = new.count(x[:name]) end.uniq
end

def merge_data(key, value)
  new = []
  key.each_with_index do |x, index| new << x.merge(value[0][x[:first_name]]) end
  new
end

def find_cool(array)
  new = []
  array.each do |x| new << x if x[:temperature] == "cool" end
  new
end

def organize_schools(array)
  schools = {}
  array.each do |name, location|
      schools[location[:location]] << name if schools[location[:location]]
      schools[location[:location]] = [] << name if !(schools[location[:location]])
  end
schools
end