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
#  final_array = nil 
#  array.each do |element|
  new_array = nil 
  new_array = array.uniq
    new_array.each do |element|
      element[:count] = array.count(element)
    end 
  new_array
end
  
  
# When fed an array, each element of which is a hash:
# Count and store the number of times each hash appears in the array.
# Eliminate any duplicate hashes in the array.
# Add a new key/value pair to each hash, i.e., :count => number  .




# it 'count how many times something appears in an array' do
#      expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
#  end


def merge_data
  
end 


def find_cool
  
end 


def organize_schools

end  