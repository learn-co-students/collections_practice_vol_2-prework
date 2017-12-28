def begins_with_r(tools)
  boolean_variable = nil
  tools.each do | tool |
    if tool[0] == "r"
      boolean_variable = true
    else
      boolean_variable = false
      break if boolean_variable == false
    end
  end
  boolean_variable
end

def contain_a(array)
  array.select do | string |
    string.include? "a"
  end
end

def first_wa(array)
  array.find do | string |
    string[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.select do | element |
    element.is_a? String
  end
end

def count_elements(array)
  array.each_with_object({}) {|object,hash| hash[object] +=1 }
end

def merge_data(keys,data)
  keys + data
end

def find_cool(cool)
  cool.select{|name,temp| temp[:temperature] == "cool"}
end

def organize_schools(schools)
  schools
end
