require 'pry'
def begins_with_r(collection)
  switch =  nil
  collection.each { |item| item.downcase.start_with?("r") ? switch = true : switch = false}
  switch
end

def contain_a(collection)
  collection.collect {|item| item.downcase.include?('a')? item : nil}.compact
end

def first_wa(collection)
  collection.select {|item| item[0..1].downcase.include?("wa")}.first
end

def remove_non_strings(collection)
  collection.select {|item| item.class == String}
end

def count_elements(collection)
  count = Hash.new(0)
  collection.each  {|item| count[item] += 1}
  count.collect {|info, val|  info[:count] = val ; info}
end

def merge_data(key, collection)
  ary_hsh = []
  collection.each do |loc|
    loc.each do |person, info|
      ary_hsh << info.merge({:first_name => person})
    end
  end
  ary_hsh
end

def find_cool(collection)
  collection.select {|person| person.value?("cool")}
end

def organize_schools(collection)
  locations = {}
  collection.each do |name, hash|
    locations[hash[:location]] = []
  end.each do |school, loc_hsh|
    if loc_hsh[:location].include?("NYC")
      locations["NYC"] << school
    elsif loc_hsh[:location].include?("SF")
      locations["SF"] << school
    else
      locations["Chicago"] << school
    end
  end
  locations
end


{
  "flatiron school bk"=>{:location=>"NYC"},
 "flatiron school"=>{:location=>"NYC"},
 "dev boot camp"=>{:location=>"SF"},
 "dev boot camp chicago"=>{:location=>"Chicago"},
 "general assembly"=>{:location=>"NYC"},
 "Hack Reactor"=>{:location=>"SF"}
}

{
  "Chicago"=>["dev boot camp chicago"],
  "NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
  "SF"=>["dev boot camp", "Hack Reactor"]
}
