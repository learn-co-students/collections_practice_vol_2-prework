require 'pry'
def begins_with_r(array)
  array.all? do |word|
     word.start_with?('r')  
    end
end

def contain_a(array)
  array.select do |word|
    word.include?('a')
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?('wa')
  end
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
  array.group_by(&:itself).map {|k,v| k.merge(count: v.length)}
end

def merge_data(k, d)
  d[0].values.map.with_index { |v, i| k[i].merge(v)} 
end

def find_cool(array)
   array.select {|hash| hash if hash[:temperature] == "cool"}
end

def organize_schools(argument)
  hash = {}

  argument.each do |school, value| 
    value.each do |key, city|
      if hash[city]
        hash[city] << school
      else
      hash[city] = [school]
      #binding.pry
    end
  end
 end
  hash  
end
