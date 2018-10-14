require('pry')
def begins_with_r(array)
  return_val=TRUE
  array.each do |string|
    if string[0]!="r"
      return_val=FALSE
    end
  end
 return_val
end
def contain_a(array)
  return_val=array.collect{|string| string if string.downcase.include?("a") }.compact
 return_val
end

def first_wa(array)
  array.find{|word|word.slice(0..1).downcase=="wa"}
end

def remove_non_strings(array)
  array.select {|word|word.class==String}
end

def count_elements(objects)
    list=[]
  objects.each_with_index do|object,index|
    object[:count]=objects.select{|item|object==item}.length
  list << object
  objects.delete(object)
end
list.uniq
end

def merge_data(keys,data)
  people=keys.collect{|hash| data.collect {|person|
  if person[hash.values[0]]
  person[hash.values[0]].merge(hash)
 end
  }}
  people.flatten
end

def find_cool(data)
  data.collect{|hash|if hash.value?("cool")
  hash 
end}.compact
end

def organize_schools(schools)
  locations={}
  schools.each do |school,info|
  if locations[info[:location]]
  
    locations[info[:location]] << school
  else
    locations[info[:location]] = [school]
  end
end
locations
end
  
  


