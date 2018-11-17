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

def


















