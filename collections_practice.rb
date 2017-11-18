# your code goes here
def begins_with_r(array)
  array.all? { |item| item[0] == "r"}
end

def contain_a(array)
  array.select {|item| item.include?("a")}
end

def first_wa(array)
  array.find {|item| item[0..1] == "wa"}
end

def remove_non_strings(array)
  array.select { |item| item.instance_of?(String)}
end

def count_elements(array)
  array.uniq.each.with_index { |item,idx| item[:count] = array.count(item) }
end

def merge_data(keys, data)
end

def find_cool(cool)
end

def organize_schools(schools)
end
