require 'pry'

# your code goes here
def begins_with_r(arr)
  return !(arr.any? {|word| word[0] != "r"})
end  

def contain_a(arr)
  arr.map {|word| word if word.include?("a")}.compact
end

def first_wa(arr)
  arr.find {|word| word[0..1] =="wa"}
end

def remove_non_strings(arr)
  arr.delete_if {|val| val.class != String}
end

def count_elements(hashes)
  hashes.uniq.map do |item|
    item[:count] = hashes.count(item)
    item
  end
end

def merge_data(keys,data)
  keys.map {|hash| hash.merge(data[0][hash[:first_name]])}
end

def find_cool(cool)
  cool.select {|hash| hash[:temperature] == "cool"}
end

def organize_schools(schools)
  new_hash ={}
  schools.each do |name, hash|
    new_hash[hash[:location]] ||= []
    new_hash[hash[:location]] << name
  end
  return new_hash
end

# "flatiron school bk" => {:location => "NYC"}
# {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"], "Chicago"=>["dev boot camp chicago"]}