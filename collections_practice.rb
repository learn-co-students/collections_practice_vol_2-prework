# your code goes here
require 'pry'
def begins_with_r(array)
  status = true
    array.each do |x|
    # binding.pry
    status = false if x[0]!= "r"
    end
status
end

def contain_a(array)
a_array = []
array.each do |x|
if x.include?("a") == true
a_array << x
end
end
a_array
end

def first_wa(array)
  array.each do |x|
    if x[0]== "w" && x[1]=="a"
      return x
      break
    end
  end
end
#
def remove_non_strings(array)
  array.each do |x|
  # binding.pry
     array.delete_if {|x| x.is_a?(String) == false }
end
end

  def count_elements(array)
    array.each do |hash|
      hash[:count] = 0
      name = hash[:name]
      array.each do |newhash|
        if newhash[:name] == name
          hash[:count] += 1
        end
      end
    end.uniq
  end

  def merge_data(arr1, arr2)
    arr2[0].map do |name, prop_hash|
      new_prop_hash = {}
      arr1.each do |new_attr_hash|
        if new_attr_hash[:first_name] == name
          new_prop_hash = prop_hash.merge(new_attr_hash)
        end
      end
      new_prop_hash
    end
  end
#
def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end

#
def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
