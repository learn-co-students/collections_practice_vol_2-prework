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


def count_elements
  
end


def merge_data
  
end 


def find_cool
  
end 


def organize_schools

end  