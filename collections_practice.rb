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

