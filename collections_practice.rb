require 'pry'

# your code goes here
def begins_with_r(array)
  r_words = []
  for i in 0..array.size-1
    r_words.push(array[i].match(/^r/) == nil ? false : true)
  end

  !r_words.include?(false)
end

def contain_a(array)
  a_words = []
  for i in 0..array.size-1
    if array[i].include?("a")
      a_words.push(array[i])
    end
  end

  a_words
end

def remove_non_strings(array)
  string = []
  for i in 0..array.size-1
    if array[i].instance_of?(String)
      string.push(array[i])
    end
  end

  string
end

def first_wa(array)
  for i in 0..array.size-1
    if array[i].match(/^wa/) != nil 
      return array[i]
    end
  end
end

def count_elements(array)
  array.group_by(&:itself).map do |key, value|
     key.merge({:count => value.length})
  end
end

def merge_data(types, prices)
  new_array = []
  counter = 0
  types.collect do |type|
    new_array.push(type.merge(prices[counter]))
    counter += 1
  end
  new_array
end

def find_cool(cool)
  array = []
  cool.each do |hash|
    hash.each do |k, v|
      next if k!=:temperature
      if v == "cool"
        array.push(hash)
      end
    end
  end
  
  array
end

def organize_campuses(campuses)
  new_hash = {}

  campuses.each do |k, v|
    if new_hash[campuses[k][:location]] == nil
      array = []
      for i in 0..campuses.to_a.size-1
        if campuses.to_a[i][1][:location] == campuses[k][:location]
          array.push(campuses.to_a[i][0])
        end
      end
      new_hash[campuses[k][:location]] = array
    end
  end

  new_hash
end
