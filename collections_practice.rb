# Return true if every element of the tools array starts with an "r" and false otherwise
# should return false if there's an element that does not begin with r
def begins_with_r(tools)
  tools.all? do |tool|
    tool.start_with?("r")
  end
end

#return all elements that contain the letter 'a'
def contain_a(elements)
  elements.select do |element|
    element.include? "a"
  end
end

# Return the first element that begins with the letters 'wa'
def first_wa(elements)
  elements.find do |element|
    element.to_s.start_with?("wa")
  end
end

# remove anything that's not a string from an array
def remove_non_strings(array)
  array.delete_if { |item| item.is_a?(String) == false }
end

#count_elements count how many times something appears in an array
def count_elements(array)
  counts = Hash.new 0
  unique_elements = array.uniq

  unique_elements.each do |item|
    item[:count] = array.count(item)
  end

  unique_elements
end

def merge_data(data1, data2)

  data1.map do |entry|
    data2.first[entry[:first_name]].merge(entry)
  end

end

#find_cool find all cool hashes
def find_cool(hashes)

end

#organize_schools organizes the schools by location
def organize_schools(schools)

end
