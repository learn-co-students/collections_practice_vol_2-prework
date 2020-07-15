# your code goes here
def begins_with_r(tools)
  counter = 0
  tools.each do |element|
    if element[0] == "r"
      counter += 1
        
        end
    end
  if counter == tools.length
  true
  else 
    false
  end
  end 
  
def contain_a(args)
    args.map do |element|
      element if element.include?("a")
  end.compact
end

def first_wa(args)
    args.each do |element|
      return element if element[0] == "w" and element[1] == "a"
      
    end
end



def remove_non_strings(array1)
  array1.collect do |element|
    element if element.instance_of?(String) == true  
  end.compact

end

def count_elements (array1)
  list = []
  answer = []
  array1.each do |person|
    person.each do |k,v|
      list << v
    end
  end
list.each do |element|
    answer.push(:name => element, :count => list.count(element))
  
end
answer.uniq
end

## must review these last three problems as I didnt not come up with the solutions myself....

def merge_data(keys,data)
  merged_hashes = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_val|
        merged_hashes << key_val.merge(info) if key_val.values[0] == name
      end
    end
  end
  merged_hashes
 end
 
 def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    hash.each { |k,v| cool_hashes << hash if k == :temperature && v == "cool"}
  end
  cool_hashes
end
 def organize_schools(hash)
  locations = {}
  hash.values.each { |location| locations[location.values[0]] = [] }
  hash.each { |school, location| locations[location.values[0]] << school }
  locations
end
 
