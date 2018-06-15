# your code goes here


def begins_with_r(arr)
  arr.all? {|ele| ele[0] == "r"}
  
end 

def contain_a(arr)
  arr.select {|e| e.include?("a")}
  
end 


def first_wa(arr)
  arr.select {|ele| ele.to_s.start_with?("wa")}.first
  
  
end 


def remove_non_strings(arr)
  arr.delete_if {|ele| ele.class != String}
  
end 




def count_elements(arr)
  na = []
  nh = Hash.new 0  
  
  arr.each do |each_hash|
  each_hash.each do |k,v|
   nh[v] +=1
    
  end 
  
  end 
   nh.each {|k,v| na << {name: k, count: v}}
 na     
end 






def merge_data(keys,data)
   keys.each do |object|
    matchingProperty = object[:first_name]
    #puts object
    otherObject = data[0][matchingProperty]
    
    otherObject.each do |property,value|
      object[property] = value
    end
  end
  
end 


def find_cool(obj)
  obj.select do |ele|
    ele[:temperature] == "cool"
  end 
end 


def organize_schools(schools)
  location = {}
   schools.each do |key, value|
        if(location[value[:location]] == nil)
   location[value[:location]] = [key]
     else
       location[value[:location]] << key
     end
   end
   location
  
end 