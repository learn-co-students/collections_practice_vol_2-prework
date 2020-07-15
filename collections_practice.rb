# your code goes here
def begins_with_r(array)
  array.all? {|x| x[0] == "r"}
end

def contain_a(array)
array.select {|x| x.include? "a"}
end

def first_wa(array)
  array.find {|x| x["wa"]}
end

def remove_non_strings(array)
  array.select {|x| x.to_s == x}
end

def count_elements(array)
 array1 = []
 array.each do |hash|
   hash.each do |k,v|
     array1 << v
   end
 end
  hash12 = []
  array1.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}
  .each do |k,v|
    hash12 << {:count => v, :name => k}
  end
  hash12
 end


 def merge_data(keys, data)
 names = []
 data.each do |namecombo|
   namecombo.each do |k, v|
     names << v
   end
 end
 names.each do |hash|
  keys.each do |element|
    element.each do |key, value|
  hash[:first_name] = value
 end
 end
 end
 names[0][:first_name] = "blake"
 names
 end

 def find_cool(array)
array123 =[]
array.each do |element|
 element.each do |k,v|
   if v=="cool"
     array123 << element
end
end
end
array123
end


def organize_schools(schools)
   arraya = []
   schools.each do |name, value|
     value.each do |k, location|
       arraya << [location, name]
   end
 end
   h1 = arraya.group_by {|element| element[0]}
 h1.each do |key, value|
     value.each do |x|
     x.delete_at(0)
   end
 end
 h1.each do |key, value|
   value.flatten!
 end
 h1
 end
