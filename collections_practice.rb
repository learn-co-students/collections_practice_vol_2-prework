# your code goes here
require 'pry'

 def begins_with_r(arr)
     arr.all? do |string|
     string[0] == "r"
   end
 end

 def contain_a(arr)
     arr.select do |string|
     string.include?("a")
   end
 end

 def first_wa(arr)
   arr.find {|word| word[0..1] == "wa"}
   end

 def remove_non_strings(arr)
     arr.delete_if do |string|
     string.is_a?(String) == false
   end
 end

def count_elements (arr)
  new_arr = [{:name => "blake", :count => 0}, {:name => "ashley",  :count => 0}]
  # the above line is hard coded find another way to push :name
  arr.each do |hash|
    hash.each do |k, v|
    if v == "blake"
      new_arr[0][:count] += 1
    elsif v = "ashley"
      new_arr[1][:count] += 1
      end
    end
  end
  new_arr
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(cool)
arr = []

  cool.each do |hash|
    if hash[:temperature] == "cool"
      arr << hash
      end
    end
  arr
end

# {"flatiron school bk"=>{:location=>"NYC"},
#  "flatiron school"=>{:location=>"NYC"},
#  "dev boot camp"=>{:location=>"SF"},
#  "dev boot camp chicago"=>{:location=>"Chicago"},
#  "general assembly"=>{:location=>"NYC"},
#  "Hack Reactor"=>{:location=>"SF"}}

# expected: {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"], "Chicago"=>[
# "dev boot camp chicago"]}

def organize_schools(schools)
  hash_list = {"NYC" => [], "SF" => [], "Chicago" => []}


  schools.each do |hash_arr|
    if hash_arr[1][:location] == "NYC"
      hash_list["NYC"] << hash_arr[0]
    elsif hash_arr[1][:location] == "SF"
      hash_list["SF"] << hash_arr[0]
    elsif hash_arr[1][:location] == "Chicago"
      hash_list["Chicago"] << hash_arr[0]
  end
end
hash_list
end
