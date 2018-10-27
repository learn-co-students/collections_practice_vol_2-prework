require 'pry'


def begins_with_r(array)
  array.each do |v|
    if v.start_with?("r") == false 
      return false
  end
end
  return true
end

def contain_a(array)
  a_array = []
  array.each do |v|
    if v.include?("a")
      a_array << v 
      end 
    end 
  a_array     
end

def first_wa(array)
  array.each do |v|
    if v.to_s.start_with?("wa") 
      return v
    end 
  end
end 

def remove_non_strings
end 