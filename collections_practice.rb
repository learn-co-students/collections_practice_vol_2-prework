# your code goes here
def begins_with_r(array)
  array.all? do |el|
   el.start_with?('r') || el.start_with?('R')
  end
end

def contain_a(array)
  array.select {|el| el.include?('a')}
end

def first_wa(array)
  array.find {|el| el.to_s.start_with?('wa')}
end

def remove_non_strings(array)
  array.delete_if {|el| !el.is_a?(String)}
end

def count_elements(array)
  array.uniq.each {|el| el[:count] = array.count(el)}
end

def merge_data(data1, data2)
  new_data = []
  data1.each do |obj|
    data2.each do |obj2|
      new_data << obj.merge(obj2[obj.values.join])
    end
  end
    new_data
end

def find_cool(array)
  newArr = []
  array.each do |el|
    el.each do |x, i|
      if i == 'cool'
        newArr << el
      end
    end
  end
    newArr
  end

def organize_schools(schools)
  result = {}
  schools.each do |school, location|
    location.each do |x, city|
      result.keys.include?(city) ? result[city] << school : result[city] = [school]
      end
    end
    result
  end
