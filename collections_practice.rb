# your code goes here
require 'pry'

def begins_with_r(x = ["ruby", "rspec", "rails"])
  y = true
  
  x.each do |element|
    if element.start_with?("r")
      y = true
    else
      y = false
      break
    end
  end
   return y
end

def contain_a(x = ["earth", "fire", "wind", "water", "heart"])
  array = []
  
  x.each do |element|
    if element.include? 'a'
      array << element
    end
  end
  return array
end

def first_wa(x = ["candy", :pepper, "wall", :ball, "wacky"])
  
  x.each do |element|
    y = element.to_s
    if y.include? "wa"
      return element
    end
  end
end

def remove_non_strings(x = ["blake", 1, :hello])
  array = []
  
  x.each do |element|
    if "".class == element.class
      array << element
    end
  end
  return array
end

def count_elements(array)
  x = array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |new_hash|
      if new_hash[:name] == name
        hash[:count] += 1
      end
    end
  end
  return x.uniq
end  

def merge_data(keys, data)
  array1 = []
  
  keys.each do |person_name|
    name = person_name[:first_name]
      data.each do |person_info| 
        if person_info[name]
          new_hash = person_info[name]
          new_hash[:first_name] = name
          array1 << new_hash
        end  
      end  
  end
  array1
end

def find_cool(cool)
  new_array = []
  
  cool.each do |array, element|
    if array[:temperature] == "cool"
      new_array << array
    end  
  end 
  return new_array
end  

def organize_schools(schools)
  array_NYC = []
  array_SF = []
  array_Chicago = []
  
  schools.each do |school, location|
    if location[:location] == "NYC"
      array_NYC << school
    elsif location[:location] == "SF"
      array_SF << school
    else
      array_Chicago << school
    end
  end 
  organized_schools = {"NYC" => array_NYC, "SF" => array_SF, "Chicago" => array_Chicago}
  return organized_schools
end