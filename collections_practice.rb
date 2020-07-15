# your code goes here

def begins_with_r(array)
  array.all? {|el| el[0] == "r"}
end  

def contain_a(array)
  a = []
  array.each do |el|
    if el.include?("a")
      a << el
    end 
  end  
  a
end  

def first_wa(array)
  wa = []
  array.each do |word|
    word = word.to_s
    if word.include?("wa")
      wa << word
    end
  end  
  wa.first
end

def remove_non_strings(array)
  strings = []
  array.each do |item|
    if item.is_a?(String)
      strings << item
    end 
  end
  strings
end 

def count_elements(array)
  total = array.uniq
    total.each do |x|
      count = 0
      array.each do |y|
        if x == y
          count += 1
        end 
      end 
      x[:count] = count
    end  
  total
end 

def merge_data(keys, data)
  merged = []
  keys.each do |key_hash|
    key_hash.each do |key, value|
      data.each do |data_hash|
        data_hash.each do |name, attibutes|
          if name == value 
            merged << key_hash.merge(attibutes)
          end 
        end
      end  
    end
  end 
  merged
end  
  
def find_cool(array) 
  cool = []
  array.each do |hash|
    hash.each_value do |value|
      if value == "cool"
        cool << hash
      end 
    end 
  end  
  cool  
end   

def organize_schools(array)
  organized = {}
    array.each do |name, place|
      place.each do |key, location|
        if organized[location] == nil
          organized[location] = []
          organized[location] << name
        else  
          organized[location] << name
        end  
      end  
    end
    organized
end  