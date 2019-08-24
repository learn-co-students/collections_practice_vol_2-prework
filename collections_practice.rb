require'pry'
def begins_with_r(array)
  array.each do |element|
  if element[0] != "r"
    return  false
    end 
  end
   true
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.select do |element|
    element.to_s.start_with?("wa")
  end.first
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.to_s == element
      new_array << element
      
end
end
new_array
end


def count_elements(array)
  array.each do |element|
    name = element[:name]
    element[:count] = 0
    array.each do |hash|
    if name == hash[:name]
      element[:count] += 1
    end
  end
    
end.uniq
end 

def merge_data(array1, array2)
  new_array = []
  array1.each_with_index do |element, index|
    #binding.pry
 new_array << array1[index].merge(array2[index]) 
  end
return new_array
end
  
  def find_cool(array)
    new_array = []
    array.each do |element|
      if element[:temperature] == "cool"
        new_array << element 
      end
    end 
    return new_array
    
  end 
   
def organize_campuses(array)
  new_array = []
  array.each do |element|
   new_array << element[:location] == element[:campuses]
    
  end 
    
    return new_array
end 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    