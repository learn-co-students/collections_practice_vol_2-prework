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
  
  hash = nil 
  
  final_collection = keys.collect do |keys_hash|
    data.collect do |data_hash|
      data_hash.collect do |data_hash|
        data_hash.each do |data_sub_key, data_sub_hash|
          
          if keys_hash[:first_name] == data_sub_hash.index
            keys_hash.merge(data_sub_hash)
          end
        end
      end
    end
  end 
  final_collection
end 
      
    
     
    
  
  
    
     
  
# c = a.merge(b)
# hash[:new_key] = hash.delete :old_key
  
  
  


def find_cool
  
end 


def organize_schools

end  