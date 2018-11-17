# your code goes here
require 'pry'

def begins_with_r(array)
  array_truth = 0
  for i in 0...array.length 
 # binding.pry
    if array[i][0] == "r"
#      binding.pry
      array_truth += 1  
    end
    if array_truth == array.length
      return true 
    end
  end
  return false
end

def contain_a(array)
  new_array = []
  for i in 0...array.length
#  binding.pry
    for j in 0...array.length
#    binding.pry
      if array[i][j] == "a"
#        binding.pry
         new_array << array[i] 
      end
    end 
  end
  return new_array
end

def first_wa(array)
  for i in 0...array.length
#  binding.pry
    if array[i][0] == "w" && array[i][1] == "a"
       return array[i]
    end
  end
end


# separated the string and hash instance of conditionals, putting them on one line with if String && Hash returned the string number and hash, my guess is this is because using both is messing with the truthyness of the conditional. Aso just wanted to try delete if and each for practice so using different enumerable methods
def remove_non_strings(array)
  array.delete_if do |i|
    i.instance_of?(String) == false
  end
  array.each do |i|
    if i.instance_of?(Hash) == true
      array.delete(i)
    end
  end
  return array
end


def count_elements(array)
# array.uniq.map do |i|
#    binding.pry
#    [i,array.count(i)].to_h
#  end
  
  array.uniq.map do |i|
#    binding.pry
    {:name => i.values[0], :count => array.count(i)}
  end
  
#  names = Hash.new(0)
#  final_output = []
#  array.each do |i|
#    names[i.keys]+=1
#  end
#  names.each do |names, counts|
#    final_output << {:name => names,  :count => counts,}
#  end
#  return final_output[names]
end

def merge_data(keys, data)
  first = keys[0].merge(data[0]["blake"])
  second = keys[1].merge(data[0]["ashley"])
#  binding.pry
  output = [first,second]
end

def find_cool(cool)
  answer = [] 
  for i in 0...cool.length
#  binding.pry
    cool[i].each do |k,v|
#      binding.pry
      if v == "cool"
#        binding.pry
        answer << cool[i]
      end
    end
  end
  return answer
end

def organize_schools(schools)
  array = []
  new_hash = {}
  schools.each do |name, values|
    values.each do |k, v|
#      binding.pry
      array << {name => v}
    end
  end
  for i in 0...array.length
    array[i].each do |ks, vs|
#      binding.pry
      if new_hash[vs] == nil
        new_hash[vs] = [ks]
      else
        new_hash[vs] += [ks]
      end
    end
  end
  return new_hash
end