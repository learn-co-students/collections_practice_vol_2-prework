require 'pry'

def begins_with_r(array)
  array.all? {|word| word.start_with? 'r'}
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include?('a')
      new_array << word
    end
  end
  new_array
end

def first_wa(array)
  array.each do |word|
    if word.to_s.start_with?('wa')
      return word
    end
  end
end

def remove_non_strings(array)
  array.keep_if {|x| x.is_a? String}
  array
end

def count_elements(array)
  name_count = []
  array.each do |value|
    name_count << {count: array.count(value), name: value[:name]}
  end
  name_count.uniq
end

def merge_data(keys, data)
  new_array = []
  keys.each do |person|
    person_name = person[:first_name]
    data.each do |individual|
      if individual[person_name]
        new_variable = individual[person_name]
        new_array << new_variable.merge(person)
      end
    end
  end
  new_array
end

def find_cool(array)
result = []
array.each do |item|
  if item[:temperature] == 'cool'
    result << item
  end
end
result
end

def organize_schools(hash)
  new_hash = {}
  hash.each do |name, locations|
    city = locations[:location]
    if new_hash[city]
      new_hash[city] << name
    else
      new_hash[city] = []
      new_hash[city] << name
    end
  end
  new_hash
end

# hash =>
# {"flatiron school bk"=>{:location=>"NYC"},
# "flatiron school"=>{:location=>"NYC"},
# "dev boot camp"=>{:location=>"SF"},
# "dev boot camp chicago"=>{:location=>"Chicago"},
# "general assembly"=>{:location=>"NYC"},
# "Hack Reactor"=>{:location=>"SF"}}

# expected: {"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}