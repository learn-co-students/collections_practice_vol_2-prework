require "pry"

def begins_with_r(array)
  r = true
  array.each do |element|
    if element[0] == "r"
      r = true
    else
      r = false
    end
  end
  r
end

def contain_a(array)
  contains_a = []
  array.each do |element|
    if element.index("a") != nil
      contains_a << element
    end
  end
  contains_a
end

def first_wa(array)
  array.each do |element|
    if element[0] == "w" && element[1] = "a"
      return element
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.respond_to?(:to_str) == true
      new_array << element
    end
  end
  new_array
end

def count_elements(array)
  array.group_by(&:itself)
  .map{|a, b| a.merge(count: b.length)}
end

def merge_data(array1, array2)
  array3 = []
  array2[0]["blake"][:first_name] = ""
  array2[0]["ashley"][:first_name] = ""
  array2[0].each do |x, y|
    array1 .each do |z|
      if z[:first_name] == x
        array2[0][x][:first_name] = z[:first_name]
        array3 << array2[0][x]
      end
    end
  end
  array3
end

def find_cool(array)
  answer = []
  array.each do |x|
    if x[:temperature] == "cool"
      answer << x
    end
  end
  answer
end

def organize_schools(hash)
  hash2 = {"Chicago" => [], "NYC" => [], "SF" => []}
  hash.each do |x, y|
    hash2.each do |a, b|
      if y[:location] == a
        hash2[a] << x
      end
    end
  end
  hash2
end
