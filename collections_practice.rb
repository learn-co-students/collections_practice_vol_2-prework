# your code goes here
def begins_with_r(tools)
  tools.each do |item|
    if item[0]== "r"
      return true
    else return false
end


def contain_a(array)
  array.each do |element|
    if element.include("a")
      puts element
    end


def first_wa(array)
  array.each do |element|
    if element[0]== "w" && element[1]=="a"
      return element
      break
    end

def remove_non_strings(array)
  array.each do |element|
    deleteif element.is_a?(string) == false
end

def count_elements(array)
  array.each do |element|
    array.count(element)
  end

def merge_data(v1,v2)
  v1[0].values.map.with_index {|v, i| v2[i].merge(v)}
end

def find_cool(array)
  array.select{|key, hash|
    if hash == "cool"
    puts hash
end

def organize_schools(array)
  array.each do |element|
    
end
