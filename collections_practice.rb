require "pry"

def begins_with_r(array)
  true_or_false = nil 
  array.each do |element|
    if element.start_with?("r") 
      true_or_false = true 
    else
      true_or_false = false  
    end 
  end
  true_or_false
end 


def contain_a(array)
  array_of_words_that_contain_a = []
  array.each do |element|
    if element.include?("a")
      array_of_words_that_contain_a << element 
    end
  end 
  array_of_words_that_contain_a
end


def first_wa(array)
  array.find do |element| 
    element.class == String && element.start_with?("wa")
  end 
end 


def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String 
  end 
end 


def count_elements(array)
  new_array = nil 
  new_array = array.uniq
    new_array.each do |element|
      element[:count] = array.count(element)
    end 
  new_array
end


def merge_data(keys, data)
 final_array = []
  hash_a = nil
  keys.each do |keys_hash|
    hash_a = keys_hash
    data.each do |data_hash|
      data_hash.each do |data_sub_key, data_sub_hash|
        if data_sub_key == keys_hash.values.join
            final_array << hash_a.merge(data_sub_hash)
        end
      end
    end
  end 
  final_array
end 
      
     
    
  
  
    
     
  
# c = a.merge(b)
# hash[:new_key] = hash.delete :old_key
  
  
  


def find_cool
  
end 


def organize_schools

end  