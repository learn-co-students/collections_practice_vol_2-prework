# your code goes here
require 'pry'

def begins_with_r(array)
  boolean = true
  array.each do |string|
    if string[0] != 'r'
      return false
    end
  end
  boolean
end

def contain_a(array)
  array.select{ |i| i.include?('a') }.map { |i| i}
end


# ["candy", :pepper, "wall", :ball, "wacky"]
def first_wa(hash)
  hash.each do |object|
    if object[0] == 'w' && object[1] == 'a'
     return object
    end
  end
end

def remove_non_strings(array)
  array.select { |string| string.class == String}
end

def count_elements(array)
  array.each do |array_hash|
    array_hash[:count] = 0
    array.each do |hash|
      if hash[:name] == array_hash[:name]
          array_hash[:count] += 1
      end  
    end
  end.uniq
end

[{:first_name=>"blake"}, {:first_name=>"ashley"}]

[{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
  "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]


def merge_data(keys, values)
  new_data = []
  keys.each do |name|
    # name = name[:first_name]
    values.each do |person_data|
      if person_data[name[:first_name]]
        new_person = person_data[name[:first_name]]
        new_person[:first_name] = name[:first_name]
        new_data << new_person
      end
    end
  end
  new_data
end

#[{:name=>"ashley", :temperature=>"sort of cool"},
# {:name=>"blake", :temperature=>"cool"}]


def find_cool(data)
  data.select {|hash| hash[:temperature] == 'cool'}
end

{"flatiron school bk"=>{:location=>"NYC"},
 "flatiron school"=>{:location=>"NYC"},
 "dev boot camp"=>{:location=>"SF"},
 "dev boot camp chicago"=>{:location=>"Chicago"},
 "general assembly"=>{:location=>"NYC"},
 "Hack Reactor"=>{:location=>"SF"}}



def organize_schools(schools)
  new_schools = {}
  schools.each do |name, location_hash|
    city_name = location_hash[:location]
    # ["flatiron school bk", {:location=>"NYC"}]
    if new_schools[city_name]
      new_schools[city_name] << name
    else 
      new_schools[city_name] = []
      new_schools[city_name] << name
    end
  end
  new_schools
end
