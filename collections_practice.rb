# your code goes here
require 'pry'
def begins_with_r(tools)
  tools.all? do |tool|
    tool.start_with?('r')
  end 
end
    
 def contain_a(array)
   letter_a = []
   array.each do |element|
     if element.include? "a"
       letter_a << element
     end     
  end
  letter_a
end

def first_wa(array)
  array.each do |element|
    if element.is_a? String
      if element.start_with?('wa')
        return element
      end        
    end   
  end
end

def remove_non_strings(array)
array.delete_if { |obj| !(obj.is_a? String) }
end

def count_elements(array)
  new_hash = {}
  array.each do |element|
    if new_hash[element[:name]]
    new_hash[element[:name]][:count] += 1
  else
    new_hash[element[:name]] = {:name => element[:name], :count => 1}
    end  
  end
  new_hash.values
end

def merge_data(arr1,arr2)
	merged =[]
	arr1.each_index do |i|
		arr2[0].keys.each do |name|
			merged << arr1[i].merge(arr2[0][name]) if name == arr1[i][:first_name]
		end
	end
	merged
end

def find_cool(cool)
  
  new_array = []
  cool.each do |element|
    if element[:temperature] == "cool"
      new_array << element
    end
  end 
  new_array
end

def organize_schools(school_hash)
  new_hash = {}
  school_hash.each do |school, location_hash|
    if new_hash[location_hash[:location]] 
       new_hash[location_hash[:location]] << school 
     else 
       new_hash[location_hash[:location]] = [school]
    end
  end
  new_hash
end