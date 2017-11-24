def begins_with_r(tools)
  tools.each do |x|
    if x[0].upcase != "R"
      return false
    end
  end
  return true
end

def contain_a(arr)
  a_arr = []
  arr.each do |x|
    if x.include?("a")
      a_arr << x
    end
  end
  a_arr
end

def first_wa(elements)
  elements.each do |x|
    if x[0] == "w" && x[1] == "a"
      return x
    end
  end
end

def remove_non_strings(arr)
  arr.reject {|x| x.class != String}
end

def count_elements(arr)
  arr.each_with_object(Hash.new(0)) {|arr, counts| counts[arr] += 1}
end

def merge_data(keys, data)
  keys.flatten
end
