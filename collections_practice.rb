# your code goes here

def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end 
end 

def contain_a(array)
  contain = []
  
  array.each do |word|
    if word.include?("a")
      contain.push(word)
    end 
  end 
  contain
end 

def first_wa(array)
  array.each do |word|
    if word.class == String
      if word.start_with?("wa")
       return word
    end
    end 
  end 
end 

def remove_non_strings(array)
  strings = []
  array.each do |element|
    if element.class == String
      strings.push(element)
    end 
  end 
  strings
end 

def count_elements (array)
  counts = []
  
  array.uniq.each do |element, value|
    counts.push(:name => element[:name],:count => array.count(element))
    
  end 
 
  
  counts
end 