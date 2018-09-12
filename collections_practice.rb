# your code goes here
require 'pry'
def begins_with_r(arr)
  begins_r = true
  arr.each do |tool|
    if tool.chars[0] != 'r'
      begins_r = false
    end
  end
  begins_r
end
def contain_a(arr)
  arr.select do |element| element.include?("a")
  end
end  
def first_wa(arr)
  arr.find do |element| element.to_s.start_with?("wa")
  end
end
def remove_non_strings(arr)
  arr.delete_if{|element| !element.instance_of?(String)}
end
def count_elements(arr)
  
end

def merge_data(keys,data)

end

def find_cool(hashes)
  cool_hashes = []
  hashes.each do |hash|
    if hash[:temperature] == "cool"
      cool_hashes << hash
    end
  end
  cool_hashes
end

def organize_schools(orig_schools)
  organized_school = {}
  orig_schools.each do |school|
    if organized_school[school[1][:location]] == nil
      organized_school[school[1][:location]] = [school[0]]
    else
      organized_school[school[1][:location]] << school[0]
    end
  end
  organized_school
end
