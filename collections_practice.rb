require 'pry'

def begins_with_r(tools)
  # Return true if every element of the tools array starts with an "r" and false otherwise.
  tools = tools.map { |e| e.start_with?("r") }
  !tools.include?(false)
end

def contain_a(array)
  # return all elements that contain the letter 'a'
  array.delete_if { |e| e.include?("a") == false }
end

def first_wa(array)
  array.delete_if { |e| e[0,2] != "wa" }
  array[0]
end


def remove_non_strings(array)
  array.delete_if { |i| i.class != String }
end

def count_elements(array)
  count = []


end

def merge_data(keys, data)

end

def find_cool

end
