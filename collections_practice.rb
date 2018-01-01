require 'pry'

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
  counthash = Hash.new(0)
  array.each {|v| counthash[v] += 1}
  counthash.collect do |key,value|
    key.merge({count:value})
  end
end

def merge_data(keys,data)
  merge_array = []
  keys.each do |e|
    data.each do |element|
      element.each do |k,v|
        if e[:first_name] == k
          merge_array << e.merge(v)
        end
      end
    end
  end
  merge_array
end

def find_cool(cool)
  cool.each do |name,temp|
    temp.select {|symb,string| string == "cool"}
  end
end

def organize_schools(schools)
  schools
end
