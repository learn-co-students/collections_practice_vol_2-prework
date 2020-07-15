# your code goes here
def begins_with_r(array)
  x = array.select {|elements| elements.start_with?('r')}
    if x.size == array.size
      return true
    else
      return false
  end
end

def contain_a(array)
  array.select {|elements| elements.include?('a')}
end

def first_wa(array)
  array.find {|elements| elements.match(/wa/)}
end

def remove_non_strings(array)
  array.select {|elements| elements.is_a?(String)}
end

def count_elements(array)
  array.each do |key|
    key[:count] = 0
    x = key[:name]
    array.each do |new_key|
      if new_key[:name] == x
        key[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  keys.each do |i|
    data.each do |new_data|
      i.merge!(new_data[i[:first_name]])
    end
  end
end

def find_cool(cool)
  cool.select do |c|
    if c.has_value?("cool")
      c
    end
  end
end

def organize_schools(schools)
  school_listing = {}
  schools.each do |school, location|
    location.each do |key, value|
      if school_listing[value] == nil
        school_listing[value] = [school]
      else
        school_listing[value] << school
      end
    end
  end
  school_listing
end
