# your code goes here

def begins_with_r(array)
  counter = 0 
  array.each do |string|
    if string[0].downcase == 'r'
      counter+= 1
    end
  end
  return counter == array.length
end

def contain_a (array)
  array.select do |string|
    string.downcase.include? "a"
    
  end
end

def first_wa (array)
  array.each do |string|
    # puts string[0...2]
    if string[0...2].downcase == 'wa'
      return string
    end
  end
end


def remove_non_strings(array)
  array.select do |string|
    string.is_a?(String)
  end
end

def count_elements(array)
  new_array = [] 
  array.each do |obj|
    obj[:count] = 1
    if new_array.include?(obj)
      new_array.delete(obj)
      obj[:count]+= 1
    end
    new_array.push(obj)
  end
  return new_array
end

require("pry")

def merge_data(keys, data)
  new_data = []
  data.each do |obj|
    obj.each do |key, value|
      keys.each do |person|
        puts person.values
        puts key.has_key?(person.values)
        if obj.has_key?(person.values)
          obj.values[person.keys] = person.values
          new_data.push(obj)
        end
      end
    end
  end
  puts new_data
end
    
  
          
puts merge_data([{:first_name=>"blake"}, {:first_name=>"ashley"}], [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
  "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}])



      
    
    
  