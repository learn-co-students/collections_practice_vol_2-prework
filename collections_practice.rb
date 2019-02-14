require 'pry'

def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end 
end 

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end 
end 

def first_wa(array)
  array.find do |element|
    element.match(/wa/)
  end 
end 

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String) }
end 

def count_elements(array)
  array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end 

def merge_data(keys, data)
  new_array = []
  keys.each do |element|
    name = element[:first_name]
    data.each do |hash|
      hash.each do |key,value|
        if key == name
          merged_info = {element.key(name) => name}
          new_array <<  merged_info.merge(value)
        end 
      end 
    end 
  end 
  new_array
end 

def find_cool(array) 
  new_array = []
  array.each do |element|
    element.each do |key, value|
      if key == :temperature
        if value == "cool"
          return new_array << element
        end 
      end 
    end 
  end 
end 


def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end
