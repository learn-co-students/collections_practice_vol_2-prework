# begins_with_r
def begins_with_r(array)
  counter = 0 
  array.each do |string|
    if string[0].downcase == 'r'
      counter+= 1
    end
  end
  return counter == array.length
end


# contain_a
def contain_a (array)
  array.select do |string|
    string.downcase.include? "a"
  end
end


# first_wa
def first_wa (array)
  array.each do |string|
    # puts string[0...2]
    if string[0...2].downcase == 'wa'
      return string
    end
  end
end


# remove_non_strings
def remove_non_strings(array)
  array.select do |string|
    string.is_a?(String)
  end
end


# count_elements
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


# merge_data
def merge_data(keys, data)
  container = []
  
  keys.each do |obj|
    name = obj[:first_name]
    data.each do |person|
      
      person.each do |key, value|
        if key == name
          value[:first_name]= name
          container.push(value)
        end
      end
      end
  end
  return container
end


# find_cool
def find_cool(cool)
  cool.select do |obj|
    obj[:temperature] == 'cool'
  end
end


# organize_schools
def organize_schools(schools)
  new_obj = {}

  schools.each do |school, location|
    if new_obj.keys.include?(location.values.join)
      new_obj[location.values.join].push(school)
    else
      schools_array = [school]
      new_obj[location.values.join] = schools_array
    end
  end
  return new_obj
end





      
    
    
  