# your code goes here
require "pry"
def begins_with_r(array)
  array2 = array.select do |element| element.start_with?('r') end
    if array2.size == array.size
      true
    else
      false
  end
end

def contain_a(array)
  array.select do |element| element.include?('a') end
end

def first_wa(array)
  array.find do |element| element.match(/wa/) end
end

def remove_non_strings(array)
array2=[]
  array.each do |element| if element.is_a?(String)
    array2 << element
    end
  end
  array2
end

def count_elements(array)
  array.each do |word|
    #binding.pry
    word[:count] = 0
    name = word[:name]
    array.each do |word1|
      if word1[:name] == name
        word[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
array = []
  keys.each do |names|
    container = {}
    names.each do |ke, nme|
    data.each do |arrays|
      arrays.each do |key, value|
        value.each do |att, num|
        container[ke] = nme
        if nme == key
        container[att] = num
            end
          end
        end
      end
    end
  array << container
  end
  array
end

def find_cool(cool)
array1 = []
  cool.each do |array|
    if array[:temperature] == 'cool'
      array1 << array
    end
  end
array1
end

def organize_schools(schools)
container = {}
  schools.each do |branch, city|
    city.each do |key, value|
      array = []
      schools.each do |branc, cit|
        cit.each do |keys, values|
        if value == values
          array << branc
        end
      end
        container[value] = array.uniq
      end
    end
  end
  container
end
